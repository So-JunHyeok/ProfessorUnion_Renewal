<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title> 
</head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/latest/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/regi.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="resources/js/membercheck.js" charset="utf-8"></script>
<body>
  <h6 class="menu" style="border-bottom: 30px solid #E0E0E0;">약관동의</h6>
  <h6 class="menu" style="border-bottom: 30px solid #E0E0E0;">본인인증</h6>
  <h6 class="menu" style="border-bottom: 30px solid #4c4c4c; color: white;">정보입력</h6>
  <h6 class="menu" style="border-bottom: 30px solid #E0E0E0;">가입완료</h6>
<div id="menubox">
  <div id="MemberContent">
    <div id="center">
      <table align="center">
        <tr>
          <th><h4>정확한 회원정보를 입력하여 주십시요</h4><hr></th>
        </tr>
      </table>
      <form action="insertUser" method="post" onsubmit="return allCheckIt()">
        <table class="tbm" align="center">
          <tr>
            <td>
              <label for="mb_id">* 아이디</label><br/>
                  <input type="text" name="mb_id" class="form-control" id="mb_id" size="60">
                  <p id="mb_id_result"></p>
            </td>
          </tr>
          <tr>
            <td>
              <label for="mb_password">* 비밀번호</label><br/>
                <input type="password" name="mb_password" class="form-control" id="mb_password" size="60">
                <p id="mb_password_result"></p>
            </td>
          </tr>
          <tr>
            <td>
              <label for="mb_repassword">* 비밀번호 확인</label><br/>
                <input type="password" name="mb_repassword" class="form-control" id="mb_repassword" size="60"><br/>
                <p id="mb_repassword_result"></p>
            </td>
          </tr>
        </table>
        <table class="tbm" align="center">
          <tr>
            <td>
              <label for="mb_nick">* 별명</label><br/>
                <input type="text" name="mb_nick" class="form-control" id="mb_nick" size="60">
                <p id="mb_nick_result"></p>
                <input type="hidden" name="mb_email" class="form-control" id="mb_email" size="60" value="${mb_email}">
            </td>
          </tr>
        </table>
        <table class="tbm" align="center">
          <tr>
            <td>
              <label for="mb_name">* 이름</label><br/>
                <input type="text" name="mb_name" class="form-control" id="mb_name" size="60">
                <p id="mb_name_result"></p>
            </td>
          </tr>
          <tr>
            <td>
              <label for="mb_birth">* 생년월일</label><br/>
                <input type="date" name="mb_birth" class="form-control" id="mb_birth" size="60">
                <p id="mb_birth_result"></p>
            </td>
          </tr>
          <tr>
            <td>
              <label for="Job">* 구분</label><br/>
              <div class="radio">
                <input type="radio" name="mb_job" value="학생" id="mb_job1">
                <label for="mb_job1">학생</label>
                <input type="radio" name="mb_job" value="교직원" id="mb_job2">
                <label for="mb_job2">교직원</label>
                <input type="radio" name="mb_job" value="기타" id="mb_job3">
                <label for="mb_job3">기타</label>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <label for="Gender">* 성별</label><br/>
                <div class="radio">
                  <input type="radio" name="mb_sex" value="1" id="mb_man">
                  <label for="mb_man">남자</label>
                  <input type="radio" name="mb_sex" value="2" id="mb_woman">
                  <label for="mb_woman">여자</label>
                </div>
            </td>
          </tr>
          <tr>
            <td>
              <label for="mb_mailling">* 메일링 서비스 &nbsp; &nbsp; &nbsp;(체크 하지 않으시면 자동으로 거부됩니다.)</label><br/>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="mb_mailling" value="1"> 정보 메일을 받겠습니다.
                  </label>
                </div>
            </td>
          </tr>
          <tr>
            <td>
              <label for="mb_open">* 정보공개  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(체크 하지 않으시면 자동으로 거부됩니다.)</label><br/>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="mb_open" value="1"> 다른사람에게 나의 정보를 볼 수 있도록 합니다.
                  </label>
                </div>
            </td>
          </tr>
          <tr>
          	<td>
	          	<select name="m_Authority">
			      	<option value="ROLE_USER">사용자</option>
			      	<option value="ROLE_ADMIN">관리자</option>
		      	</select>
          	</td>
          </tr>
        </table>
        <table class="tbm" align="center">
          <tr>
            <th>
              <input class="btn btn-default" type="submit" value="확인">
              <input class="btn btn-default" type="button" value="취소">
            </th>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>