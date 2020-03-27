<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Upload completed</h1>


<div class="result-images">
         <img src="${pageContext.request.contextPath }${url }" style="width:150px">
</div>
<p> <a href="/form"> 다시 업로드 하기 </a> </p>


<form action="download" method="post">
	<c:forEach var="f" items="${filename }">
	파일명 : ${f.getName() }
	</c:forEach>
	<input type="hidden" name ="filename" value="${f.getName()}">
	<input type="submit" value="다운로드">	
</form>
</body>
</html>