package org.poem.service;

import org.poem.service.impl.FeignHelloServiceFallback;
import org.poem.user.User;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.*;

/**
 * @author Administrator
 */
@FeignClient(value = "SERVICE-PROVIDE-1", fallback = FeignHelloServiceFallback.class)
public interface FeignHelloService {

    /**
     *
     * @return
     */
    @RequestMapping("/v1/service/getHello")
    String hello();

    /**
     *
     * @param name
     * @return
     */
    @GetMapping("/v1/service/hello1")
    String hello(@RequestParam("name") String name);

    /**
     *
     * @param name
     * @param age
     * @return
     */
    @GetMapping("/v1/service/hello2")
    User hello(@RequestHeader("name") String name, @RequestHeader("age") Integer age);

    /**
     *
     * @param user
     * @return
     */
    @PostMapping("/v1/service/hello3")
    String hello(@RequestBody User user);
}
