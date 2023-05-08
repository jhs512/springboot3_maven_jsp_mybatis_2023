package com.ll.app20230508.boundedContext.article.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Article {
    private int id;
    private String createDate;
    private String modifyDate;
    private int memberId;
    private String title;
    private String body;
    private String extra__memberNickname;
}
