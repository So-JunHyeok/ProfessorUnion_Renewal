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
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/regi.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="resources/js/membercheck.js" charset="utf-8"></script>
<body>
  <div id="wrap">
    <div id="contents">
      <div class="contents-container">
        <div class="member">
          <form action="insertUser" method="post" onsubmit="return allCheckIt()">
            <div class="member-top">
              <div class="member-name">
                <h3>회원가입</h3>
              </div>
              <div class="member-step">
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
            <div class="member-center">
              <div class="membeer-title">
                <div class="membeer-left-title">
                  <h4>기본정보</h4>
                </div>
                <div class="membeer-right-title">
                  <p>*항목은 반드시 입력하셔야 합니다.</p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_id">*아이디</label>
                </div>
                <div class="member-right-input">
                  <input type="text" name="mb_id" class="form-control" id="mb_id" placeholder="아이디를 입력해주세요.">
                  <p id="mb_id_result"></p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_password">*비밀번호</label>
                </div>
                <div class="member-right-input">
                  <input type="password" name="mb_password" class="form-control" id="mb_password" placeholder="비밀번호를 입력해주세요.">
                  <p id="mb_password_result"></p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_repassword">*비밀번호 확인</label>
                </div>
                <div class="member-right-input">
                  <input type="password" name="mb_repassword" class="form-control" id="mb_repassword" placeholder="비밀번호를 입력해주세요.">
                  <p id="mb_repassword_result"></p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_nick">*별명</label>
                </div>
                <div class="member-right-input">
                  <input type="text" name="mb_nick" class="form-control" id="mb_nick" placeholder="별명을 입력해주세요.">
                  <p id="mb_nick_result"></p>
                  <input type="hidden" name="mb_email" class="form-control" id="mb_email" value="${mb_email}">
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_name">*이름</label>
                </div>
                <div class="member-right-input">
                  <input type="text" name="mb_name" class="form-control" id="mb_name" placeholder="이름을 입력해주세요.">
                  <p id="mb_name_result"></p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="mb_birth">*생년월일</label>
                </div>
                <div class="member-right-input">
                  <input type="date" name="mb_birth" class="form-control" id="mb_birth">
                  <p id="mb_birth_result"></p>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="job">*직업</label>
                </div>
                <div class="member-right-input">
                  <input type="radio" name="mb_job" value="학생" id="mb_job1" checked>
                  <label for="mb_job1"><span></span>학생</label>
                  <input type="radio" name="mb_job" value="교직원" id="mb_job2">
                  <label for="mb_job2"><span></span>교직원</label>
                  <input type="radio" name="mb_job" value="기타" id="mb_job3">
                  <label for="mb_job3"><span></span>기타</label>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="Gender">*성별</label>
                </div>
                <div class="member-right-input">
                  <input type="radio" name="mb_sex" value="1" id="mb_man" checked>
                  <label for="mb_man" class="radio-label">남자</label>
                  <input type="radio" name="mb_sex" value="2" id="mb_woman">
                  <label for="mb_woman" class="radio-label">여자</label>
                </div>
              </div>
              <div class="memeber-line">
                <div class="member-left-text">
                  <label for="">메일 수신/정보공개</label>
                </div>
                <div class="member-right-input">
                  <input type="checkbox" name="mb_mailling" id="mb_mailling" value="1">
                  <label for="mb_mailling">메일 수신</label>
                  <input type="checkbox" name="mb_open" id="mb_open" value="1">
                  <label for="mb_open">나의 정보를 볼 수 있도록 합니다.</label>
                </div>
              </div>
            </div>
            <div class="member-bottom">
              <div class="conditio-btn">
                <input type="submit" name="register" value="회원가입">
                <input type="button" name="cancel" value="취소" onclick="gomain()">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
</body>
</html>