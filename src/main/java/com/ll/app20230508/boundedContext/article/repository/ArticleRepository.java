package com.ll.app20230508.boundedContext.article.repository;

import com.ll.app20230508.boundedContext.article.entity.Article;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ArticleRepository {
    @Select("""
            <script>
            SELECT A.*,
            M.nickname AS extra__memberNickname
            FROM article AS A
            LEFT JOIN `member` AS M
            ON A.memberId = M.id
            ORDER BY A.id DESC
            </script>
            """)
    public List<Article> findAll();
}
