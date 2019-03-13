package org.poem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@EnableEurekaClient
@SpringBootApplication
public class ServiceProvide2App {

    public static void main(String[] args) {
        SpringApplication.run(ServiceProvide2App.class, args);
    }
}
