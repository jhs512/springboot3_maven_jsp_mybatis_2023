package com.ll.app20230508.boundedContext.article.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ArticleController {
    @GetMapping("/article/list")
    public String showList() {
        return "usr/article/list";
    }
}
