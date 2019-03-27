package org.poem.command;

import com.netflix.hystrix.HystrixCommand;
import com.netflix.hystrix.HystrixCommandGroupKey;
import org.springframework.web.client.RestTemplate;

/**
 * @author Administrator
 */
public class StringPostCommand extends HystrixCommand<String> {

    private RestTemplate template;
    private String user;

    protected StringPostCommand(HystrixCommandGroupKey group, RestTemplate template,String user ) {
        super(Setter.withGroupKey(HystrixCommandGroupKey.Factory.asKey("GetSetGet")));
        this.template = template;
        this.user = user;
    }


    @Override
    protected String run() throws Exception {
        String user = this.template.postForEntity("http://SERVICE-PROVIDE-2/post","<empty message >", String.class).getBody();
        StringCommand.flushCache(user);
        return user;
    }
}
