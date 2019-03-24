package org.poem;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

/**
 *
 * @author
 * @since
 */
@EnableEurekaClient
@SpringBootApplication
public class ServiceProvide1App {

    public static void main(String[] args) {
        SpringApplication.run(ServiceProvide1App.class, args);
    }
}
