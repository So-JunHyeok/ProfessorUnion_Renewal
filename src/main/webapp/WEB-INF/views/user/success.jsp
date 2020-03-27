<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/regi.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="resources/js/emailauth.js" charset="utf-8"></script>
<body>
  <div id="wrap">
    <div id="contents">
      <div class="contents-container">
        <div class="regi-success">
            <div class="success-top">
              <div class="success-name">
                <h3>회원가입</h3>
              </div>
              <div class="success-step">
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
            <div class="success-center">
              <div class="success-title">
                <div class="success-left-title">
                  <h4>가입안내</h4>
                </div>
                <div class="success-right-title">
                  <p>*항목은 반드시 입력하셔야 합니다.</p>
                </div>
              </div>
              <div class="success-guide">
                <div class="guide-icon">
                  <i class="fas fa-users"></i>
                </div>
                <div class="guide-title">
                  <h1>'${mb_name}'님의 회원가입을 진심으로 축하합니다.</h1>
                </div>
                <div class="guide-contents">
                  <p>회원님의 아이디는 <b>${mb_id}</b>이며, 전국교수노동조합의 모든서비스를 이용할실 수 있습니다.</p>
                  <p>회원님의 패스워드는 아무도 알 수 없는 암호화 코드로 저장되므로 안심하셔도 좋습니다.</p>
                  <p>아이디나 패스워드 분실시에는 아이디/비밀번호 찾기를 이용하여 찾으실 수 있습니다.</p>
                </div>
              </div>
            </div>
            <div class="success-bottom">
              <div class="success-btn">
                <input type="submit" onclick="location.href='main.nhn'" value="홈으로">
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</body>
</html>