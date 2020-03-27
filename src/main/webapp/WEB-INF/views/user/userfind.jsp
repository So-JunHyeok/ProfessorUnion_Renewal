<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/find.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="resources/js/find.js" charset="utf-8"></script>
<body>
<jsp:include page="/resources/header.jsp"/>
<div id="wrap">
  <div id="contents">
    <div class="container">
      <div class="choice">
        <a href="userfind?pageInfo=idfind" id="idfind">아이디 찾기</a><a href="userfind?pageInfo=passfind" id="passfind">비밀번호 찾기</a>
        <input type="hidden" class="input1" id="pageInfo" aria-describedby="basic-addon1" value="${pageInfo}">
      </div>
    </div>
  	<div class="container">
	<c:if test="${pageInfo eq 'idfind'}">
      <div class="box">
        <div class="box_title">
          <h2>본인확인</h2>
          <p>가입당시 이메일 주소와 입력한 이메일 주소가 같아야, 아이디를 찾을 수 있습니다.</p>
        </div>
        <div class="box_content">
          <div class="box_colum">
            <div class="box_label">
              <label for="id_name" style="position: relative; top: 3px;">이름</label> <br/>
              <label for="id_email" style="position: relative; top: 17px;">이메일</label>
            </div>
            <div class="box_input">
              <input type="text" name="id_name" id="id_name"><br/>
              <input type="text" name="id_email" id="id_email"><br/>
            </div>
          </div>
        </div>
        <div class="box_colum">
          <div class="box_input_result">
            <p id="id_email_result"></p>
          </div>
          <div class="box_input_button">
            <button type="button" name="button" id="idfind_btn">아이디 찾기</button>
          </div>
        </div>
      </div>
	</c:if>
	<c:if test="${pageInfo eq 'passfind'}">
	  <div class="box">
        <div class="box_title">
          <h2>이메일인증</h2>
          <p>가입당시 이메일 주소로 임시비밀번호가 발급 됩니다.</p>
        </div>
        <div class="box_content">
          <div class="box_colum">
            <div class="box_label">
              <label for="pass_id" style="position: relative; top: 3px;">아이디</label><br/>
              <label for="pass_email" style="position: relative; top: 17px;">이메일</label>
            </div>
            <div class="box_input">
              <input type="text" name="pass_id" id="pass_id"><br/>
              <input type="text" name="pass_email" id="pass_email"><br/>
            </div>
          </div>
        </div>
        <div class="box_colum">
          <div class="box_input_result">
            <p id="pass_email_result"></p>
          </div>
          <div class="box_input_button">
            <button type="button" name="button" id="passfind_btn">비밀번호 찾기</button>
          </div>
        </div>
      </div>
	</c:if>
  	</div>
  </div>
</div>
</body>
</html>