<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>전국교수노동조합</title>
<link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/agonyWrite.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
<script src="resources\js\dropmenu.js" charset="utf-8"></script>
</head>
<body>
<div id="wrap">
 <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
     <jsp:include page="/resources/sidebar.jsp"></jsp:include>

      <div class="agony-content">
        <div class="agony-title">
          <h2>교권상담 신청</h2>
        </div>
        <div class="agony-box">
          <div class="agony-ex">
            <dl>
              <dt><h4>1. 교권상담신청 방법</h4></dt>
              <dd><p>- 교권상담을 진행하기 위해서는 소속대학과 이름을 밝혀주셔야 상담이 가능합니다</p></dd>
              <dd><p>- 상담내용은 자세하게 적어주시면 상담에 많은 도움이 됩니다.</p></dd>
            </dl>
            <dl>
              <dt><h4>2. 상담신청내역 보기</h4></dt>
              <dd><p>- 아래 신청목록보기를 통해서 자신의 상담 신청내용을 볼 수 있습니다.</p></dd>
            </dl>
          </div>
        </div>
        <div class="agony-write-table">
          <form action="agonyWriter" method="post">
            <table>
              <tr>
                <th>제목</th>
                <th>이름</th>
                <th>소속대학</th>
              </tr>
              <tr>
                <td><input type="text" name="atitle" placeholder="제목 입력" required></td>
                <td><input type="text" name="aname" placeholder="실명 입력" maxlength="5" required></td>
                <td><input type="text" name="auniversity" placeholder="OOO대학교 입력" maxlength="9" required></td>
              </tr>
              <tr>
                <th colspan="3">내용</th>
              </tr>
              <tr>
                <td colspan="3"><textarea name="acontent" id="acontent" cols="30" rows="10" required></textarea></td>
              </tr>
            </table>
            <div class="agony-write-btn">
              <div class="agony-write-btn1">
                <input type="submit" value="신청하기">
                <input type="button" value="목록보기" onclick="location.href='agonyUserList'">
              </div>
              <div class="agony-write-btn2">
                <select name="authority">
                  <option value="재임용">재임용</option>
                  <option value="임금">임금</option>
                  <option value="징계">징계</option>
                </select>
              </div>
            </div>
          </form>
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
