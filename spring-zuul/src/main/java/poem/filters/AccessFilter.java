package poem.filters;

import com.google.common.collect.Lists;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.apache.commons.codec.binary.Base64;
import org.apache.http.HttpStatus;
import org.poem.enums.AuthorizationEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.netflix.zuul.filters.support.FilterConstants;
import org.springframework.http.HttpMethod;
import org.springframework.util.CollectionUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @author Administrator
 */
public class AccessFilter extends ZuulFilter {

    private static final Logger logger = LoggerFactory.getLogger(AccessFilter.class);

    /**
     * 过滤器类型
     *
     * @return
     */
    @Override
    public String filterType() {
        return FilterConstants.PRE_TYPE;
    }

    /**
     * 过滤器执行顺序
     * 数值越小优先级越高
     * @return
     */
    @Override
    public int filterOrder() {
        return 0;
    }

    /**
     * 是否需要执行
     *
     * @return
     */
    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() throws ZuulException {
        RequestContext ctx = RequestContext.getCurrentContext();
        HttpServletRequest servletRequest = ctx.getRequest();
        logger.info(String.format("Send %s request to %s", servletRequest.getMethod(), servletRequest.getRequestURI()));
        final String method = servletRequest.getMethod();
        if (HttpMethod.OPTIONS.matches(method)) {
            return null;
        }
        Object accessToken = servletRequest.getParameter(AuthorizationEnum.AUTHORIZATION);
        if (accessToken == null){
            accessToken = servletRequest.getHeader(AuthorizationEnum.AUTHORIZATION);
        }
        if (accessToken == null) {
            logger.warn("access token is empty");
            ctx.setSendZuulResponse(false);
            ctx.setResponseStatusCode(HttpStatus.SC_UNAUTHORIZED);
            ctx.setResponseBody("unauthorized");
            return null;
        }
        Map<String, List<String>> requestQueryParams = ctx.getRequestQueryParams();
        if (requestQueryParams != null) {
            List<String> columns = requestQueryParams.get("columns");
            List<String> newColumns = Lists.newArrayList();
            if (!CollectionUtils.isEmpty(columns)) {
                try {
                    for (String column : columns) {
                        newColumns.add(column.replaceAll("\\{", "%7B").replaceAll("}", "%7D").replaceAll("\"", "%22"));
                    }
                    requestQueryParams.put("columns", newColumns);
                } catch (Exception e) {
                    e.printStackTrace();
                    logger.error(e.getLocalizedMessage());
                    e.printStackTrace();
                    requestQueryParams.put("columns", columns);
                }
                ctx.setRequestQueryParams(requestQueryParams);
            }
        }

        // 申请客户端密钥头
        //添加Basic Auth认证信息
        ctx.addZuulRequestHeader(AuthorizationEnum.AUTHORIZATION, "Basic " + getBase64Credentials("app01", "*****"));
        logger.info("access token ok");
        return null;
    }

    private String getBase64Credentials(String userName, String password) {
        String plainCreds = userName + ":" + password;
        byte[] plainCredsBytes = plainCreds.getBytes();
        byte[] base64CredsBytes = Base64.encodeBase64(plainCredsBytes);
        return new String(base64CredsBytes);
    }
}
