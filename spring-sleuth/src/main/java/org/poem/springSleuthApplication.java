package org.poem;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.client.loadbalancer.LoadBalanced;
import org.springframework.context.annotation.Bean;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

/**
 * @author Administrator
 */
@RestController
@EnableDiscoveryClient
@SpringBootApplication
public class springSleuthApplication {

    private static final Logger logger = LoggerFactory.getLogger(springSleuthApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(springSleuthApplication.class,args);
    }

    @Bean
    @LoadBalanced
    RestTemplate getRestTemplate(){
        return new RestTemplate();
    }

    @GetMapping("/trace-1")
    public String trace(){
        logger.info(" ==== call trace-1 ===== ");
        return getRestTemplate().getForEntity("http://SERVICE-PROVIDE-1/v1/service/getHello", String.class).getBody();
    }
}
