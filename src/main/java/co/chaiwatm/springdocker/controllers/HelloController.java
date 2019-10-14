package co.chaiwatm.springdocker.controllers;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
public class HelloController {

    @GetMapping("/hello")
    public String index() {
        return "hello";
    }
}