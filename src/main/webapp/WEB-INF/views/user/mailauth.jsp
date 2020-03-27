<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>전국교수노동조합</title>
</head>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/regi.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="resources/js/emailauth.js" charset="utf-8"></script>
<body>
  <div id="wrap">
    <div id="contents">
      <div class="contents-container">
        <div class="email">
            <div class="email-top">
              <div class="email-name">
                <h3>회원가입</h3>
              </div>
              <div class="email-step">
                <div class="step-one">
                  <h4>STEP 01 약관동의</h4>
                </div>
                <div class="step-two">
                  <h4>STEP 02 본인인증</h4>
                </div>
                <div class="step-three">
                  <h4>STEP 03 회원정보 입력</h4>
                </div>
                <div class="step-for">
                  <h4>STEP 04 회원가입 완료</h4>
                </div>
              </div>
            </div>
            <div class="email-center">
              <div class="email-text">
                <div class="left-text">
                  <h4>본인인증</h4>
                </div>
                <div class="right-text">
                  <p>*항목은 반드시 입력하셔야 합니다.</p>
                </div>
              </div>
              <div class="email-box">
                <div class="email-input-name">
                  <label for="mb_email">*이메일</label>
                </div>
                <div class="email-input">
                  <input type="text" name="mb_email" id="mb_email">@<input type="text" name="mb_email2" id="mb_email2">
                  <select name="sub_email" id="sub_email" onchange="chageLangSelect(this.value)">
                    <option value="직접입력">직접입력</option>
                    <option value="naver.com">naver.com</option>
                    <option value="daum.net">daum.net</option>
                    <option value="gmail.com">gmail.com</option>
                  </select>
                </div>
                <div class="email-input-btn">
                  <input type="button" id="emailbtn" class="btn btn-default" value="인증요청">
                </div>
              </div>
              <div class="email-time-one">
                <p id="mb_email_result"></p>
              </div>
              <div class="email-box">
                <div class="email-input-name">
                  <label for="mb_emctf">*인증 확인</label>
                </div>
                <div class="email-input">
                  <input type="text" name="mb_emctf" id="mb_emctf">
                </div>
                <div class="email-input-btn">
                  <input type="button" id="email_checkbtn" class="btn btn-default" value="인증확인">
                </div>
              </div>
              <div class="email-time">
                <div class="email-time-text">
                </div>
                <p id="mb_emctf_result"></p>
              </div>
            </div>
            <div class="email-bottom">
              <div class="conditio-btn">
                <input type="button" name="cancel" value="취소" onclick="gomain()">
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>