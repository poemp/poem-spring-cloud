package org.poem.service;

import com.netflix.hystrix.HystrixEventType;
import com.netflix.hystrix.HystrixObservableCommand;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import org.poem.command.StringCommand;
import org.poem.command.StringObservableCommand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

@Service
public class HelloService {
    @Autowired
    private RestTemplate restTemplate;

    /**
     * helloFallback
     * @return
     */
    @HystrixCommand(fallbackMethod = "helloFallback")
    public String helloService() {
        return restTemplate.getForEntity("http://SERVICE-PROVIDE-1/v1/service/getHello", String.class).getBody();
    }


    /**
     * 同步执行
     *
     * @return
     */
    public String synchronizeHello() {
        StringCommand userCommand = new StringCommand(this.restTemplate, "synchronizeHello");
        return userCommand.execute();
    }

    /**
     * 异步处理
     *
     * @return
     */
    public String asynchronousHello() {
        Future<String> stringFuture = new StringCommand(this.restTemplate, "asynchronousHello").queue();
        try {
            return stringFuture.get();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * observable
     * @return
     */
    public String observable() {
        StringObservableCommand command = new StringObservableCommand(this.restTemplate, "observable");
        return "" + command.toObservable().count();
    }

    private String helloFallback() {
        return "error";
    }
}
