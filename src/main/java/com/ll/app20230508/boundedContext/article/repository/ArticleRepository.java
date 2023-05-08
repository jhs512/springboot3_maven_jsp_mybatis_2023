package com.ll.app20230508.boundedContext.article.repository;

import com.ll.app20230508.boundedContext.article.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ArticleRepository {
    @Select("""
            <script>
            SELECT A.*
            FROM article AS A
            ORDER BY A.id DESC
            </script>
            """)
    public List<Article> findAll();
}
