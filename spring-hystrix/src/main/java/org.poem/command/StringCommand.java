package org.poem.command;

import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;
import com.netflix.hystrix.HystrixCommandKey;
import com.netflix.hystrix.HystrixRequestCache;
import com.netflix.hystrix.strategy.concurrency.HystrixConcurrencyStrategyDefault;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

/**
 * @author Administrator
 */
public class StringCommand extends HystrixCommand<String> {
    private static final Logger logger = LoggerFactory.getLogger(StringCommand.class);
    private RestTemplate restTemplate;
    private String message;

    public StringCommand(RestTemplate restTemplate, String message) {
        super(new HystrixCommandGroupKey() {
            @Override
            public String name() {
                return message;
            }
        });
        this.restTemplate = restTemplate;
        this.message = message;
    }

    public static void flushCache(String id) {
        HystrixRequestCache.getInstance(new HystrixCommandKey() {
            @Override
            public String name() {
                return id;
            }
        }, HystrixConcurrencyStrategyDefault.getInstance()).clear(id);
    }

    @Override
    protected String run() throws Exception {
        ResponseEntity<String> responseEntity = this.restTemplate.getForEntity("http://SERVICE-PROVIDE-2/user/{1}", String.class, 1);
        if (responseEntity.getStatusCode().is4xxClientError()) {
            logger.info("4xx :" + responseEntity.getBody());
        }
        if (responseEntity.getStatusCode().is5xxServerError()) {
            logger.info("5xx :" + responseEntity.getBody());
        }
        if (responseEntity != null) {
            return responseEntity.getBody();
        }
        return null;
    }

    /**
     * 添加缓存的key
     *
     * @return
     */
    @Override
    protected String getCacheKey() {
        return String.valueOf(message);
    }
}
