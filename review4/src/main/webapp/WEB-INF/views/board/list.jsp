<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="path" value="<%=request.getContextPath() %>"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 목록</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">writer</th>
      <th scope="col">title</th>
    </tr>
  </thead>
  <tbody>
   
    <c:forEach var="b" items="${boards}">
    	  <tr>
		      <td>${b.boardNo}</td>
		      <td>${b.userId}</td>
		      <td>
		      
		      <a href="${path}/board/show?boardNo=${b.boardNo}">${b.title}</a>
		      </td>
		      
		      <td>
		      	<a href="${path}/board/delete?boardNo=${b.boardNo}">삭제</a>
		      
		      </td>
   		  </tr>
    
    </c:forEach>
    
    
    
  
  </tbody>
</table>

<form method="get" action="${path}/board/search/">
    	검색:<input type="text" name="keyword">
    	<input type="submit" value="검색">
    </form>
    

</body>
</html>