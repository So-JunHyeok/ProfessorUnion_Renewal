<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>전국교수노동조합</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/corruptionlist.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <link rel="stylesheet" href="resources/css/AdminHeader.css">
</head>
<body>




<div id="wrap">
     <div class="manu_bar">
      <div class="admintitle">
        <div>
        <h2>관리자화면</h2>
        <h3>AdminPage</h3>
        </div>
        <p>|</p>
      </div>
      <div class="adminManu">
        <div class="config">
          <i class="fas fa-wrench"></i>
          <p><a href="admin_con">환경설정</a></p>
        </div>
        <div class="member">
          <i class="fas fa-user-tag"></i>
          <p><a href="MemberManagement.nhn">회원관리</a></p>
        </div>
        <div class="board">
          <i class="fas fa-clipboard-list"></i>
          <p><a href="BoardManagement.nhn">게시판관리</a></p>
        </div>
        <div class="apply">
         <i class="fas fa-list"></i>
          <p><a href="RequestManagement">요청관리</a></p>
        </div>         
        </div>
       
      </div>
    </div>
    <div class="side_content_box">
      <div class="side_box">
        <div class="home_logout_box">
           <h3 class="Home"><a href="main.nhn">HOME</a></h3><p>|</p><h3 class="Logout"><a href="logout">LOGOUT</a></h3>
        </div>

        <div class="side_title">
          <a href="RequestManagement"><h3>요청관리</h3></a>
        </div>
       <div class="subtitle_1">
          <h4><a href="agonyList">상담신청현황</a></h4>
        </div>

        <div class="subtitle_1">
          <h4><a href="corruptionList">대학비리고발</a></h4>
        </div>
        
         <div class="subtitle_1">
          <h4><a href="adminmyquestion_cont.nhn">Q&A</a></h4>
        </div>
        
        



      </div>







<div class="content_area">
  <div id="content_box">
    <div class="content_title">
         <div class="list-title">
          <h3>Q&A</h3>
        </div>
        <div class="config_sumit">
        
              <!-- 관리자 비밀번호를 입력해야 매핑값 전달 가능  -->
               <!--  <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value="">
                <input type="button" name="membermodify" value="제출"  onclick="listSubmit()" > -->
                <span><input type="text" name="seach_text" value="검색"><button href="#">검색</button>
      
              </div>
    </div>
      
      <div id="contents">
			<div class="container">

      <div class="list-content_ad1" style="width: 94%;">

        <div class="list-table">
          <table>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
              <th>조회</th>
    
            </tr>
            <c:forEach items="${list}" var="li">
            <tr>
              <td>${li.wr_id}</td>
              <td><a href="corruptionDetail?ct_num=${li.wr_id}">${li.wr_subject}</a></td>
              <td><a href="corruptionDetail?ct_num=${li.wr_id}">${li.mb_id}</a></td>
<%--               <td>
                <c:choose>
  					<c:when test="${fn:length(li.ct_title) > 20 }">
  						<a href="corruptionDetail?ct_num=${li.ct_num}">${fn:substring(li.ct_title,0,20)}...</a>
  					</c:when>

  					<c:otherwise>
  						<a href="corruptionDetail?ct_num=${li.ct_num}">${li.ct_title}</a>
  					</c:otherwise>
  				</c:choose>
              </td> --%>
<%--               <td>${li.ct_name}</td> --%>
              <td>${li.wr_datetime}</td>
              <td>${li.wr_hit}</td>
              <%-- <td>
                <c:if test="${li.ct_read eq 'Y'}">
                  <i class="far fa-envelope-open"></i>
                </c:if>
                <c:if test="${li.ct_read eq 'N'}">
                  <i class="far fa-envelope"></i>
                </c:if>
              </td> --%>
            </tr>
            </c:forEach>
          </table>
        </div>
        <div class="list-link">
          <div class="link-one">
          </div>
          <div class="link-two">
            <ul>
  						<c:if test="${pageMaker.prev}">
  							<li><a
  								href="${path}corruptionList?page=${pageMaker.startPage - 1}"><i
  									class="fas fa-angle-left"></i></a></li>
  						</c:if>
  						<c:forEach begin="${pageMaker.startPage}"
  							end="${pageMaker.endPage}" var="idx">
  							<li
  								<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
  								<a href="corruptionList?page=${idx}">${idx}</a>
  							</li>
  						</c:forEach>
  						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
  							<li><a href="${path}corruptionList?page=${pageMaker.endPage + 1}"><i
  									class="fas fa-angle-right"></i></a></li>
  						</c:if>
  					</ul>
          </div>
        </div>
      </div>
	</div>
	</div>
  </div>
  <!--  -->
  </div>


    <!-- div id="footer">
      <div class="container">
        <div class="footer-contents">
          <p>08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706&nbsp;&nbsp;COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div> -->
  </div>
</body>
</html>