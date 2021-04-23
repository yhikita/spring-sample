package com.example.springsample;

import lombok.Data;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestRest {

  @GetMapping(path = "/")
  public Bean test() {
    return new Bean("John", 40);
  }

  @Data
  static class Bean {
    String name;
    int age;

    Bean(String name, int age) {
      this.name = name;
      this.age = age;
    }
  }
}
