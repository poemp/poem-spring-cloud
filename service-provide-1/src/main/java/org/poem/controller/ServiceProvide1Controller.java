package org.poem.controller;

import org.poem.user.User;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

/**
 * @author
 * @since
 */
@RestController
@RequestMapping("/v1/service")
public class ServiceProvide1Controller {

    @Value("${spring.application.name}")
    private String name;

    @GetMapping("/getHello")
    public String getHello() {
        return name;
    }

    /**
     * hello
     *
     * @param name
     * @return
     */
    @RequestMapping(value = "/hello1", method = RequestMethod.GET)
    public String hello(@RequestParam String name) {
        return this.name + " Hello " + name;
    }

    /**
     * hello2
     * @param name
     * @param age
     * @return
     */
    @GetMapping("/hello2")
    public User hello(@RequestHeader String name, @RequestHeader Integer age) {
        User user = new User();
        user.setAge(age);
        user.setName(name);
        return user;
    }

    /**
     * hello3
     * @param user
     * @return
     */
    @PostMapping("/hello3")
    public String hello(@RequestBody User user) {
        return user.toString();
    }
}
