<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="게시물 리스트" />

<%@ include file="../common/head.jspf" %>

<table class="table table-fixed w-full">
  <colgroup>

  </colgroup>
  <thead>
    <tr>
      <th>번호</th>
      <th>작성날짜</th>
      <th>수정날짜</th>
      <th>작성자</th>
      <th>제목</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="article" items="${articles}">
    <tr>
      <th>${article.id}</th>
      <td>${article.createDate}</td>
      <td>${article.modifyDate}</td>
      <td>${article.extra__memberNickname}</td>
      <td>
        <a class="btn-text-link block w-full truncate">
          ${article.title}
        </a>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>

<%@ include file="../common/foot.jspf" %>