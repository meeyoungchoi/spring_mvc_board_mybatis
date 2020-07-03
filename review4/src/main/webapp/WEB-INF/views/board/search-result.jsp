<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색결과</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">작성자</th>
      <th scope="col">제목</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach var="b" items="${boards}">
  	<tr>
      <td>${b.boardNo}</td>
      <td>${b.userId}</td>
      <td>${b.title}</td>
    </tr>
   
  
  </c:forEach>
    
  </tbody>
</table>
</body>
</html>