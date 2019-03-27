package org.poem.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Administrator
 */
@RestController
@RequestMapping("/user")
public class UserController {

    @Value("${spring.application.name}")
    private String name;


    @GetMapping("/{id}")
    public String service(@PathVariable("id") String md) {
        return name + " @@ " + md;
    }
}
