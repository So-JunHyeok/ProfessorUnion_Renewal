<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/errorpage.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<body>
<div id="wrap">
  <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
      <div class="login-contents">
        <div class="login-top">
          <h2>400 ERROR</h2>
        </div>
        <div class="login-center">
			<div class="error-img">
				<img src="resources/img/main/errorImg.png">
			</div>
			<div class="error-content">

				<span class="errorfont">죄송합니다.</span>
				<p class="errorfont2">요청하신 페이지를 찾을 수 없습니다.</p>
				<p class="errorfont3">찾으시려는 페이지는 주소를 잘못 입력하였거나</p>
				<p>페이지 주소의 변경 또는 삭제 등의 이유로 페이지를 찾을 수 없습니다.</p>
				<p class="errorfont4">입력하신 페이지의 주소와 경로가 정확한지 한번더 확인 후 이용하시기
					바랍니다.</p>
			</div>
		</div>
      </div>
    </div>
  </div>
    <div id="footer">
      <div class="container">
        <div class="footer-contents">
 <p>08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>