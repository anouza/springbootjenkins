package com.example.demo.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;


@RestController
@RequestMapping("/api/v1")
public class HomeController {
    
    @GetMapping("/hello")
    public String hello() {
        return "Welcome to the Jungle 1236";
    }
    
}
