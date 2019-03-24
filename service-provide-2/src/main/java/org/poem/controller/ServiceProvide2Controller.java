package org.poem.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author
 * @since
 */
@RestController
@RequestMapping("/v1/service")
public class ServiceProvide2Controller {

  @Value("${spring.application.name}")
  private String name;

  @GetMapping("/getHello")
  public String getHello() {
    return name;
  }


}
