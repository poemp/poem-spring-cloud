package org.poem.service.impl;

import org.poem.service.FeignHelloService;
import org.poem.user.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.*;

/**
 * @author Administrator
 */
@Component
public class FeignHelloServiceFallback implements FeignHelloService {


    @Override
    public String hello() {
        return "未知";
    }

    @Override
    public String hello(String name) {
        return "error";
    }

    @Override
    public User hello(String name, Integer age) {
        return new User("未知",null) ;
    }

    @Override
    public String hello(User user) {
        return "error";
    }
}
