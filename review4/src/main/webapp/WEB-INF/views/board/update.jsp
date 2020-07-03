<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<h1>게시글 수정</h1>
	
	
	<form method="post">
		<input type="hidden" name="boardNo" value="${board.boardNo}">
		작성자:<input type="text" readonly="readonly" name="userId" value="${board.userId}">
		제목:<input type="text" name="title" value="${board.title}">
		내용:<input type="text" name="content" value="${board.content}">
		<button>전송</button>
	</form>
	
	
	
</body>
</html>