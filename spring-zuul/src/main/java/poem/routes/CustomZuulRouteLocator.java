package poem.routes;

import org.poem.route.ZuulRouteUtils;
import org.poem.route.ZuulRouteVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.cloud.netflix.zuul.filters.RefreshableRouteLocator;
import org.springframework.cloud.netflix.zuul.filters.SimpleRouteLocator;
import org.springframework.cloud.netflix.zuul.filters.ZuulProperties;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * 动态路由
 * 网关  动态路由管理
 * @author Administrator
 */
public class CustomZuulRouteLocator extends SimpleRouteLocator implements RefreshableRouteLocator {
    private static final Logger log = LoggerFactory.getLogger(CustomZuulRouteLocator.class);
    private ZuulProperties properties;


    public CustomZuulRouteLocator(String servletPath, ZuulProperties properties) {
        super(servletPath, properties);
        this.properties = properties;
    }

    @Override
    public void refresh() {
        doRefresh();
    }

    @Override
    protected Map<String, ZuulProperties.ZuulRoute> locateRoutes() {
        // This will load the old routes which exist in cache
        LinkedHashMap<String, ZuulProperties.ZuulRoute> routesMap = new LinkedHashMap<>(super.locateRoutes());
        try {
            // If server can load routes from file which means the file changed, using the new config routes
            Map<String, ZuulProperties.ZuulRoute> newRouteMap = this.loadRoutesFromDisconf();
            if (newRouteMap.size() > 0) {
                log.info("New config services list: {}", Arrays.toString(newRouteMap.keySet().toArray()));
                routesMap.clear();
                routesMap.putAll(newRouteMap);
            }
        } catch (Exception e) {
            // For every exception, do not break the gateway working
            log.error(e.getMessage(), e);
        }
        LinkedHashMap<String, ZuulProperties.ZuulRoute> values = new LinkedHashMap<>();
        for (Map.Entry<String, ZuulProperties.ZuulRoute> entry : routesMap.entrySet()) {
            String path = entry.getKey();
            // Prepend with slash if not already present.
            if (!path.startsWith("/")) {
                path = "/" + path;
            }
            if (StringUtils.hasText(this.properties.getPrefix())) {
                path = this.properties.getPrefix() + path;
                if (!path.startsWith("/")) {
                    path = "/" + path;
                }
            }
            values.put(path, entry.getValue());
        }
        return values;
    }


    /**
     * 加载数据库中的数据
     * @return
     */
    private Map<String, ZuulProperties.ZuulRoute> locateRoutesFromRedis() {
        Map<String, ZuulProperties.ZuulRoute> routes = new LinkedHashMap<>();
        List<ZuulRouteVO> results = ZuulRouteUtils.getZuulRouteVO();
        for (ZuulRouteVO result : results) {
            if(!result.getEnabled()){
                continue;
            }
            if (StringUtils.isEmpty(result.getPath())) {
                continue;
            }
            if (StringUtils.isEmpty(result.getServiceId()) && StringUtils.isEmpty(result.getUrl())) {
                continue;
            }
            ZuulProperties.ZuulRoute zuulRoute = new ZuulProperties.ZuulRoute();
            log.info(String.format("load route:%-20s %-20s", result.getServiceId(),result.getPath() ));
            try {
                BeanUtils.copyProperties(result, zuulRoute);
            } catch (Exception e) {
                log.error("=============load zuul route info from redis with error==============", e);
            }
            //开启自定义敏感头
            zuulRoute.setCustomSensitiveHeaders(true);
            routes.put(zuulRoute.getPath(), zuulRoute);
        }
        return routes;
    }
    /**
     * Read the new config file and reload new routes and service config
     *
     * @return
     */
    private Map<String, ZuulProperties.ZuulRoute> loadRoutesFromDisconf() {
        log.info("----load configuration----");
        Map<String, ZuulProperties.ZuulRoute> latestRoutes = new LinkedHashMap<>(16);
        latestRoutes.putAll(locateRoutesFromRedis());
        return latestRoutes;
    }
}