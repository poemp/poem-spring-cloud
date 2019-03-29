package org.poem.route;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Administrator
 */
public class ZuulRouteUtils {

    public static List<ZuulRouteVO> getZuulRouteVO(){
        List<ZuulRouteVO> zuulRouteVOS = new ArrayList<>();
        ZuulRouteVO service1 = new ZuulRouteVO();
        service1.setEnabled(true);
        service1.setId("service-consume");
        service1.setPath("/service1/**");
        service1.setServiceId("service-consume");
        zuulRouteVOS.add(service1);

        ZuulRouteVO provide1 = new ZuulRouteVO();
        provide1.setEnabled(true);
        provide1.setId("service-provide-1");
        provide1.setPath("/service-provide-1/**");
        provide1.setServiceId("service-provide-1");
        zuulRouteVOS.add(provide1);

        ZuulRouteVO provide2 = new ZuulRouteVO();
        provide2.setEnabled(true);
        provide2.setId("service-provide-2");
        provide2.setPath("/service-provide-2/**");
        provide2.setServiceId("service-provide-2");
        zuulRouteVOS.add(provide2);

        ZuulRouteVO springFeign = new ZuulRouteVO();
        springFeign.setEnabled(true);
        springFeign.setId("spring-feign");
        springFeign.setPath("/spring-feign/**");
        springFeign.setServiceId("spring-feign");
        zuulRouteVOS.add(springFeign);

        ZuulRouteVO sleuth = new ZuulRouteVO();
        sleuth.setEnabled(true);
        sleuth.setId("spring-sleuth");
        sleuth.setPath("/spring-sleuth/**");
        sleuth.setServiceId("spring-sleuth");
        zuulRouteVOS.add(sleuth);
        return zuulRouteVOS;
    }
}
