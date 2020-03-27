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
<title>전국교수노동조합</title>
<link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/agonyUesrList.css">
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
	
 <jsp:include page="/resources/header.jsp"></jsp:include>

		<div id="contents">
			<div class="contents-container">
   
  
     <jsp:include page="/resources/sidebar.jsp"></jsp:include>

				<div class="list-content">
					<div class="list-title">
						<h2>교 권 상 담</h2>
					</div>
					<div class="list-table">
						<table>
							<tr>
								<th>번호</th>
								<th>문의유형</th>
								<th>소속대학</th>
								<th id="agony-user-title">제목</th>
								<th>이름</th>
								<th>작성자</th>
								<th>날짜</th>
							</tr>
							<c:forEach items="${articles}" var="li">
								<tr>
									<td>${li.anum}</td>
									<td><a href="agonyDetail?anum=${li.anum}">${li.authority}</a></td>
									<td><a href="agonyDetail?anum=${li.anum}">${li.auniversity}</a></td>
									<c:choose>

										<c:when test="${fn:length(li.atitle) > 20 }">
											<td><a href="agonyDetail?anum=${li.anum}">${fn:substring(li.atitle,0,20)}...</a></td>
										</c:when>

										<c:otherwise>
											<td><a href="agonyDetail?anum=${li.anum}">${li.atitle}</a></td>
										</c:otherwise>

									</c:choose>
									<td>${li.aname}</td>
									<td>${li.aid}</td>
									<td>${li.adate}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="list-link">
						<div class="link-two">
						<ul>
							<c:if test="${pageMaker.prev}">
								<li><a
									href="${path}agonyUserList?page=${pageMaker.startPage - 1}">
									<i class="fas fa-angle-left"></i></a></li>
							</c:if>
							<c:forEach begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}" var="idx">
								<li
									<c:out value="${pageMaker.criteria.page == idx ? 'class=active' : ''}"/>>
									<a href="agonyUserList?page=${idx}">${idx}</a>
								</li>
							</c:forEach>
							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="${path}agonyUserList?page=${pageMaker.endPage + 1}">
									<i class="fas fa-angle-right"></i></a></li>
							</c:if>
						</ul>
					</div>
						<div class="link-three">
							<button type="button" onclick="location.href='agonyWrite'">글쓰기</button>
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
	</div>
</body>
</html>
