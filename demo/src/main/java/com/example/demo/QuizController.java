package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
public class QuizController {

    @GetMapping("/quiz")
    public String showQuizForm(HttpSession session) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login";
        }
        return "quiz";
    }

    @PostMapping("/quiz")
    public String submitQuiz(@RequestParam Integer score, HttpSession session) {
        if (session.getAttribute("username") == null) {
            return "redirect:/login";
        }
        session.setAttribute("score", score);
        return "redirect:/home";
    }
}
