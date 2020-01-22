package com.icodingedu.mall.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RouterController {

    @GetMapping("/index")
    public String toIndex(){
        return "index";
    }

    @GetMapping("/product-add")
    public String toProductAdd(){
        return "product-add";
    }
}
