<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>상담 게시판 리스트</title>
<link rel="stylesheet" href="resources/css/AdminHeader.css">
<link rel="stylesheet" href="resources/css/agonyUesrList.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
<script src="resources\js\dropmenu.js" charset="utf-8"></script>

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
        
        <!-- 수정된 정보의 값을 action매핑을오 전달한다.  -->
    
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>상담신청</h3>
              </div>
              <div class="config_sumit">
              
              
              <!-- 관리자 비밀번호를 입력해야 매핑값 전달 가능  -->
               <!--  <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value="">
                <input type="button" name="membermodify" value="제출"  onclick="listSubmit()" > -->
               <!--  <span><input type="text" name="seach_text" value="검색"><button href="#">검색</button> -->
          <form action="agonyList" style="width: 100%;">
            <div class="list-search-select">
              <select name="searchOption">
                <option value="titlecontent">제목+내용</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="writer">작성자</option>
              </select>
            </div>
            <div class="list-search-bar">
              <input type="search" name="keyword" style="height: 22px;">
              <input type="hidden" name="boardName" value="${boardName}">
            </div>
            <div class="list-search-btn">
              <input class="submitbt" type="submit" name="" value="검색" style="margin-left: 90px;">
            </div>
          </form>
 
      
              </div>
            </div>
            
            <div id="contents">
			<div class="container">
			
			<div class="list-content" style="width: 100%; margin-left: 0px;">
			
			
			<div class="list-table">
			<table>
			<tr style="font-size: 14px;">
			<th>번호</th>
			<th>문의유형</th>
			<th>소속대학</th>
			<th>이름</th>
			<th>작성자</th>
			<th>제목</th>
			<th>날짜</th>
			<th>읽음여부</th>
			</tr>
			<c:forEach items="${articles}" var="li">
			<tr style="font-size: 12px;">
			<td>${li.anum}</td>
			<td><a href="agonyDetail?anum=${li.anum}">${li.authority}</a></td>
			<td><a href="agonyDetail?anum=${li.anum}">${li.auniversity}</a></td>
			<td>${li.aname}</td>
			<td>${li.aid}</td>
			<c:choose>
			
			<c:when test="${fn:length(li.atitle) > 20 }">
			<td><a href="agonyDetail?anum=${li.anum}">${fn:substring(li.atitle,0,20)}...</a></td>
			</c:when>
			
			<c:otherwise>
			<td><a href="agonyDetail?anum=${li.anum}">${li.atitle}</a></td>
			</c:otherwise>
			
			</c:choose>
			<td>${li.adate}</td>
			              <td>
                <c:if test="${li.aread eq 'Y'}">
                  <i class="far fa-envelope-open"></i>
                </c:if>
                <c:if test="${li.aread eq 'N'}">
                  <i class="far fa-envelope"></i>
                </c:if>
              </td>
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
  								href="${path}agonyList?page=${pageMaker.startPage - 1}"><i
  									class="fas fa-angle-left"></i></a></li>
  						</c:if>
  						<c:forEach begin="${pageMaker.startPage}"
  							end="${pageMaker.endPage}" var="idx">
  							<li
  								<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
  								<a href="agonyList?page=${idx}">${idx}</a>
  							</li>
  						</c:forEach>
  						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
  							<li><a href="${path}agonyList?page=${pageMaker.endPage + 1}"><i
  									class="fas fa-angle-right"></i></a></li>
  						</c:if>
  					</ul>
          </div>
        </div>
			</div>
			</div>
			</div>
			</div>
			</div>



				</div>

</body>
</html>