package org.poem;


import org.springframework.boot.WebApplicationType;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 *
 * @author
 * @since
 */
@EnableDiscoveryClient
@SpringBootApplication
public class CloudBusApplication {

  public static void main(String[] args) {
    new SpringApplicationBuilder(CloudBusApplication.class)
        .web(WebApplicationType.SERVLET)
        .run(args);
  }

}
