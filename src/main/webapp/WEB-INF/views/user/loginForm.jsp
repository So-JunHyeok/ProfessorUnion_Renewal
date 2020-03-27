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
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="resources/js/find.js" charset="utf-8"></script>
<body>
<div id="wrap">
  <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
      <div class="login-contents">
        <div class="login-top">
          <h2>로그인</h2>
        </div>
        <div class="login-center">
          <div class="login-img">
            <img src="resources/img/login/login.JPG"> 
          </div>
          <div class="login-input">
              <div class="login">
		        <form action='<c:url value="main.nhn"/>' method="post" id="login-form">
		          <div class="login-id-box">
		            <div class="login-id-title">
		              <h3>로그인</h3>
		            </div>
		            <div class="login-id">
		              <input type="text" name="l_Id" placeholder="Your Id">
		            </div>
		          </div>
		          <div class="login-pw-box">
		            <div class="login-pw-title">
		              <h3>비밀번호</h3>
		            </div>
		            <div class="login-pw">
		              <input type="password" name="l_Pw" placeholder="Your Password">
		            </div>
		          </div>
		          <p style="margin-left:100px ; color: red;">${loginfail}${error}</p>
		        
              </div>
              <div class="login-btn">
                <input type="submit" name="login-form" value="로그인" form="login-form">
              </div>
          </div>
          <div class="login-btn-phone">
            <input type="submit" name="login-form" value="로그인" form="login-form">
          </div>
              </form>
        </div>
              </form>
        <div class="login-bottom">
          <div class="login-left">
            <div class="login-memory-text">
              <p>아이디 / 비밀번호가 기억나지않으신가요?</p>
            </div>
            <div class="login-memory-btn">
              <button type="button" name="idfind" onclick="goidfind()">아이디 찾기</button>
              <button type="button" name="passfind" onclick="gopassfind()">비밀번호 찾기</button>
            </div>
          </div>
          <div class="login-right">
            <div class="login-memory-text">
              <p>아직 회원가입하지 않으셨나요?</p>
            </div>
            <div class="login-memory-btn1">
              <button type="button" name="button" onclick="location.href='register'">회원가입</button>
            </div>
          </div>
        </div>

        <div class="login-bottom-phone">
          <div class="login-right-phone">
            <div class="login-memory-btn1-phone">
              <button type="button" name="button" onclick="location.href='register'">회원가입</button>
            </div>
          </div>
          <div class="login-left-phone">
            <div class="login-memory-btn-phone">
              <button type="button" name="idfind" onclick="goidfind()">아이디 찾기</button>
              <button type="button" name="passfind" onclick="gopassfind()">비밀번호 찾기</button>
            </div>
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