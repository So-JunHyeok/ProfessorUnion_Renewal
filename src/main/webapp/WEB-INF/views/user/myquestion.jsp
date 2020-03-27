<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>상담 게시판 리스트</title>
  <script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/list.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>
<div id="wrap">
 <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>
      <div class="list-content">
        <div class="list-title">
          <h2 id="btitle"></h2>
        </div>
        <div class="list-table">
          <table>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
            </tr>
            <c:forEach items="${list}" var="list" varStatus="status">
		    <tr>
		      <td>${list.wr_id}</td>
		      <td style="font-weight:bold;"><a href="myquestion_cont.nhn?wr_id=${list.wr_id}&boardName=${boardName}">${list.wr_subject}</a></td>
		      <td>${list.mb_id}</td>
		      <td>${list.wr_datetime}</td>
		    </tr>
		    </c:forEach>
          </table>
        </div>
        <div class="list-link">
          <div class="link-one">
   <%--          <p>Total : ${pageMaker.totalCount }</p> --%>
          </div>
          <div class="link-two">
         	<ul>
		        <c:if test="${pageMaker.prev}">
	  				<li><a href="question_list?page=${pageMaker.startPage - 1}"><i class="fas fa-angle-left"></i></a></li>
	  			</c:if>
	  			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
	  				<li <c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
	  					<a style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;" href="question_list?page=${idx}">${idx}</a>
	  				</li>
	  			</c:forEach>
	  			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
	  				<li><a href="question_list?page=${pageMaker.endPage + 1}"><i class="fas fa-angle-right"></i></a></li>
	  			</c:if>
        	</ul>
          </div>
   
<!--           <div class="link-three">
            <button onclick = "location.href='#'">글쓰기</button>
          </div> -->
        </div>
        
           <div class="list-search">
          <form action="board_list.nhn">
            <div class="list-search-select">
              <select name="searchOption">
                <option value="titlecontent">제목+내용</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="writer">작성자</option>
              </select>
            </div>
            <div class="list-search-bar">
              <input type="search" name="keyword" size="35">
              <input type="hidden" name="boardName" value="${boardName}">
            </div>
            <div class="list-search-btn">
              <input type="submit" name="" value="검색">
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