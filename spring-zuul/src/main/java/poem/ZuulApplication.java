package poem;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.ServerProperties;
import org.springframework.cloud.netflix.ribbon.SpringClientFactory;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.cloud.netflix.zuul.filters.ZuulProperties;
import org.springframework.context.annotation.Bean;
import poem.filters.AccessFilter;
import poem.routes.CustomZuulRouteLocator;

/**
 * @author 曹莉
 */
@SpringBootApplication
@EnableZuulProxy
public class ZuulApplication {

    @Autowired
    ServerProperties server;
    @Autowired
    ZuulProperties zuulProperties;

    public static void main(String[] args) {
        SpringApplication.run(ZuulApplication.class, args);
    }

    @Bean
    public AccessFilter getAccessFilter(){
        return new AccessFilter();
    }

    @Bean
    public CustomZuulRouteLocator routeLocator() {
        return new CustomZuulRouteLocator(server.getServlet().getContextPath(), zuulProperties);
    }

}
