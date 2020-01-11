<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sbs.board.dto.Article" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "pageName" value ="게시물 상세페이지" />
<%@ include file="../part/head.jspf" %>


	<!-- el문법을 사용하면, request.getAttribute 할 필요가 없다. -->
		<section class="con">
		번호 : ${article.id} <br>
		제목 : ${article.title} <br>
		내용: ${article.body} <br>
		날짜: ${article.regDate}
		</section>
	
	<div class ="btns con" >
		<a href="./list">게시물 리스트</a>
		<a href="./add">게시물 추가</a>
		<a href="./modify?id=${article.id}">게시물 수정</a>
		<a onclick="if (confirm('삭제하시겠습니까?' )== false ) return false;" href="./doDelete?id=${article.id}">게시물 삭제</a>
	</div>
<!-- el문법 -->
<%@ include file="../part/foot.jspf" %>