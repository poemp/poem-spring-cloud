package org.poem;

import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.config.server.EnableConfigServer;

/**
 * @author Administrator
 */
@EnableDiscoveryClient
@SpringBootApplication
@EnableConfigServer
public class SpringConfigApplication {

    public static void main(String[] args) {
        new SpringApplicationBuilder(SpringConfigApplication.class)
                .web(WebApplicationType.SERVLET)
                .run(args);
    }
}
