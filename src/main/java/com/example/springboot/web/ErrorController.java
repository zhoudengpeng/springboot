package com.example.springboot.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/error")
public class ErrorController {

    @GetMapping("/error")
    public Error error(){
        Error error = new Error();
        error.setCode("SYSTEM_ERROR");
        error.setMsg("系统错误");
        return error;
    }

}
