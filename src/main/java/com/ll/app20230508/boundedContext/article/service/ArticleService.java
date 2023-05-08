package com.ll.app20230508.boundedContext.article.service;

import com.ll.app20230508.boundedContext.article.entity.Article;
import com.ll.app20230508.boundedContext.article.repository.ArticleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ArticleService {
    private final ArticleRepository articleRepository;

    public List<Article> findAll() {
        return articleRepository.findAll();
    }
}
