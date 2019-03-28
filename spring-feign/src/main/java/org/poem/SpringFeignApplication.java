package org.poem;

import feign.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.Bean;

/**
 * @author Administrator
 */
@SpringBootApplication
@EnableDiscoveryClient
@EnableFeignClients
public class SpringFeignApplication {

    @Bean
    Logger.Level feignLoggerLevel(){
        return Logger.Level.FULL;
    }
    public static void main(String[] args) {
        SpringApplication.run(SpringFeignApplication.class, args);
    }
}
