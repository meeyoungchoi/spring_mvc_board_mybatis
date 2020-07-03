<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="<%=request.getContextPath() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세 조회</title>
</head>
<body>
	<h1>게시글 상제 조회</h1>
	
	글번호:<input type="text" name="boardNo" readonly="readonly" value="${board.boardNo}">
	작성자:<input type="text" name="userId" readonly="readonly" value="${board.userId}">
	제목:<input type="text" name="title" readonly="readonly" value="${board.title}">
	내용:<input type="text" name="content" readonly="readonly" value="${board.content}">
	
	<a href="${path}/board/modify?boardNo=${board.boardNo}">수정</a>
	<a href="${path}/board/delete?boardNo=${board.boardNo}">삭제</a>
	<a href="${path}/board/list">목록</a>
	
</body>
</html>