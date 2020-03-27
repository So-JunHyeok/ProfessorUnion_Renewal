<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/question.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <script src="resources/js/jquery-3.3.1.min.js" charset="utf-8"></script>
</head>
<body>
<jsp:include page="/resources/header.jsp"/>
<div id="wrap">
  <div id="contents">
    <div class="contents-container">
	<jsp:include page="/resources/sidebar.jsp"></jsp:include>
      <div class="question-content">
        <div class="question-top">
          <div class="question-left">
            <div class="question-title">
              <h2>Q&A게시판</h2>
            </div>
          </div>
          <div class="question-right">
            <form action="question_write" method="post">
              <table>
                <tr>
                  <th><h3>문의작성</h3></th>
                </tr>
                <tr>
                  <td><input type="submit" value="작성"></td>
                </tr>
                <tr>
                  <td class="qut-title"><input type="text" name="qu_subject" id="qu_subject" placeholder="제목 입력" required></td>
                </tr>
                <tr>
                  <td><textarea name="qu_content" id="qu_content" cols="30" rows="10" placeholder="내용 입력" required></textarea></td>
                </tr>
              </table>
            </form>
          </div>
        </div>
        <div class="question-center">
            <div class="question-serch-name">
              <h2>Q&A 검색</h2>
            </div>
            <div class="question-serch">
              <form action="#">
                <div class="bar">
                  <input type="search" name="" placeholder="search.." required>
                  <input type="submit" id="qut-search" name="" value="검색">
                </div>
              </form>
            </div>
        </div>
        <div class="question-bottom">
            <div class="bottom-title">
              <h2>자주찾는 문의 TOP 5</h2>
            </div>
            <div class="bottom-contents">
              <div class="question-list">
                <div class="question-icon">
                  <i class="far fa-question-circle"></i>
                </div>
                <div class="question-text">
                  <p>교수노조 조합원 가입신청 방법은?</p>
                </div>
              </div>
              <div class="question-list">
                <div class="question-icon">
                  <i class="far fa-question-circle"></i>
                </div>
                <div class="question-text">
                  <p>교수노조 조합원 가입신청 방법은?</p>
                </div>
              </div>
              <div class="question-list">
                <div class="question-icon">
                  <i class="far fa-question-circle"></i>
                </div>
                <div class="question-text">
                  <p>교수노조 조합원 가입신청 방법은?</p>
                </div>
              </div>
              <div class="question-list">
                <div class="question-icon">
                  <i class="far fa-question-circle"></i>
                </div>
                <div class="question-text">
                  <p>교수노조 조합원 가입신청 방법은?</p>
                </div>
              </div>
              <div class="question-list">
                <div class="question-icon">
                  <i class="far fa-question-circle"></i>
                </div>
                <div class="question-text">
                  <p>교수노조 조합원 가입신청 방법은?</p>
                </div>
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