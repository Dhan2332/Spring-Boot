package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class GradesController {

    @GetMapping("/grades")
    public String viewGrades(HttpSession session, Model model) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login";
        }

        String username = (String) session.getAttribute("username");
        Integer score = (Integer) session.getAttribute("score");

        model.addAttribute("username", username);
        model.addAttribute("score", score != null ? score : "N/A");
        return "grades";
    }
}
