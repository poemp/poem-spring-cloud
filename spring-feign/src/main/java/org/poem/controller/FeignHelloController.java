package org.poem.controller;

import org.poem.service.FeignHelloService;
import org.poem.user.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Administrator
 */
@RestController
@RequestMapping("/feign")
public class FeignHelloController {

    @Autowired
    private FeignHelloService feignHelloService;

    @GetMapping("/feign-consumer")
    public String helloConsumer(){
        return  this.feignHelloService.hello();
    }

    /**
     * consumer1
     * @return
     */
    @GetMapping("/feign-consumer1")
    public String helloConsumer2(){
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(feignHelloService.hello()).append("\n")
                .append(feignHelloService.hello("DIDI")).append("\n")
                .append(feignHelloService.hello("DIDI", 32)).append("\n")
                .append(new User("DIDI", 30)).append("\n");
        return  stringBuilder.toString();
    }
}
