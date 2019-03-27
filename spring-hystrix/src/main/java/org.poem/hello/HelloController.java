package org.poem.hello;

import org.poem.service.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author
 * @since
 */
@RestController
@RequestMapping("/hystrix")
public class HelloController {

    @Autowired
    private HelloService helloService;


    /**
     * hello
     * @return
     */
    @GetMapping("/hello")
    public  String hello(){
        return this.helloService.helloService();
    }

    /**
     * synchronizeHello
     * @return
     */
    @GetMapping("/synchronizeHello")
    public  String synchronizeHello(){
        return this.helloService.synchronizeHello();
    }

    /**
     * asynchronousHello
     * @return
     */
    @GetMapping("/asynchronousHello")
    public  String asynchronousHello(){
        return this.helloService.asynchronousHello();
    }

    /**
     * observable
     * @return
     */
    @GetMapping("/observable")
    public  String observable(){
        return this.helloService.observable();
    }

}
