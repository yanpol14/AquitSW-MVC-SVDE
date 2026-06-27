package com.example.demo.controller;

import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequestMapping("/dashboard")
public class DashboardController {

    public DashboardController(){

    }

    @GetMapping("/metricas")
    public String metricas(Model model) {
        model.addAttribute("pestana", "metricas");
        return "Dashboard/dashboard";
    }
}
