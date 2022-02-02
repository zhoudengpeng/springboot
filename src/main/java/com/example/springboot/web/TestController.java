package com.example.springboot.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping("/students/{id}")
    public Student getStudent(@PathVariable int id){
        Student jason = new Student();
        jason.setId(1);
        jason.setName("Jason");
        return jason;
    }

}
