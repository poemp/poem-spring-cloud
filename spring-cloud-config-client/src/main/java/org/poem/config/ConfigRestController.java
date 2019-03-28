package org.poem.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Administrator
 */
@RestController
@RefreshScope
public class ConfigRestController {

    @Value("${sang}")
    private String sang;

    @Autowired
    private Environment environment;

    @GetMapping("/hello")
    public String hello(){
        return this.sang;
    }

    @GetMapping("/hello2")
    public String hello2(){
        return this.environment.getProperty("sang", "未定义");
    }
}
