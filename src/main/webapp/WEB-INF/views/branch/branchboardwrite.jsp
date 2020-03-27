<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>전국교수노동조합</title>
</head>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/branch.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
    <script type ="text/javascript" src="resources/js/jquery-3.3.1.min.js" charset="UTF-8"></script>
  <script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
    var sBtn = $(".professor-kinds ul > li");
    sBtn.find("a").click(function(){
    sBtn.removeClass("active");
    $(this).parent().addClass("active");
    })
    })
</script>
<body>
<div id="wrap">
 <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
  
    <jsp:include page="/resources/sidebar.jsp"></jsp:include>
<!--         <div class="side-professor-img">
          <a href="#">
            <img src="resources/img/branch/ProfessorLogo.png">
          </a>
        </div> -->
        <!-- <div class="side-professor-title">
          <h2>교수노조 소개</h2>
        </div> -->
<!--         <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">출번선언</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">추진배경/연혁</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">강령규약</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">교수노조 안내</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">조직구성</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">임원소개</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">상징마크</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="#">오시는길</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
        </div> -->
     

      <div class="professor-contents">
      	<div class="professor-top">
      		<h2>지부/지회</h2>
       		<form class="contents1-form" action="branchwrite" method="post">
				<table class="writeform-table1">
					<tr>
						<th>지부</th>
						<td><input class="table1-input" type="text" name="branchArea" size="20" style="border-bottom: 1px solid #BDBDBD;"></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input class="table1-input" type="text" name="branchName" size="20" style="border-bottom: 1px solid #BDBDBD;"></td>
					</tr>
					<tr>				
						<th>직책</th>
						<td><input class="table1-input" type="text" name="branchPosition" size="20" style="border-bottom: 1px solid #BDBDBD;"></td>
					</tr>
					<tr>
						<th>대학</th> 
						<td><input class="table1-input" type="text" name="branchUni" size="20" style="border-bottom: 1px solid #BDBDBD;"></td>
					</tr>
					<tr>
						<th>Email</th>
						<td><input class="table1-input" type="text" name="branchMail" size="20" style="border-bottom: 1px solid #BDBDBD;"></td>
					</tr>
					
					<tr>
						<td><input class="table1-input" type="hidden" name="branchKind" size="20" value="${pageInfo}"></td>
					</tr> 
				
				</table>
			<div class="write-buttons">
				<input type="submit" value="작성완료" class="button-cancle">
				<button class="button-cancle" onclick="location.href='branchboardlist?pageInfo=${pageInfo}&side=branchboardlist'">취소</button>
			</div>
	</form>        
    </div>
  </div>

    <div id="footer">
      <div class="container">
        <div class="footer-contents">
 <p style="font-size: 14px;">08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</body>
</html>