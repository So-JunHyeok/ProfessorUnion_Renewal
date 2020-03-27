<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--<c:if test="${not empty pageContext.request.userPrincipal}"></c:if>--%>
<sec:authorize access="hasRole('ROLE_USER')" var="u">
${u}
${auth}
${vo}
<br/>
<%--${pageContext.request.userPrincipal.name}--%>
<sec:authentication property="name"/> 님이 로그인 하셨습니다.<br/>
<a href="${pageContext.request.contextPath}/">Log Out</a><br/>
<a href="mypage?pageInfo=mypage">My Page</a><br/>
<a href="mypage?pageInfo=changepass">비밀번호변경</a><br/>
<a href="mypage?pageInfo=memberdelete">회원탈퇴</a><br/>
<a href="question">Q&A</a>
</sec:authorize>
</body>
</html>