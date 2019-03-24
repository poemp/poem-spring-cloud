package org.poem.hello;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author
 * @since
 */
@Service
public class HelloController {

    @Autowired
    private RestTemplate restTemplate;

    @HystrixCommand()
    public String helloService(){
        return null;
    }
}
