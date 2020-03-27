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
	
		 <jsp:include page="/resources/header.jsp"></jsp:include>


		<div id="contents">
			<div class="container">
				<div class="banner">
					<div class="main-img">
						<img src="resources/img/main/bn.jpg">
					</div>
					<div class="apply">
						<div class="apply-contents">
							<div class="apply-img">
								<a href="#"><img src="resources/img/main/banner.png"></a>
							</div>
							<div class="apply-text">
								<a href="#">조합원<br>가입신청
								</a>
							</div>
						</div>
						<c:if test="${sessionID != null}">
						<div class="apply-contents">
							<div class="authority">
								<a href="agonyWrite" class="action-a">교권쟁의<br>상담신청
								</a>
							</div>
							<div class="corruption">
								<a href="#" class="action-a">대학비리고발</a>
							</div>
						</div>
						</c:if>
						<c:if test="${sessionID == null}">
						<div class="apply-contents" id="">
							<div class="authority">
								<a href="" class="action-a">교권쟁의<br>상담신청
								</a>
							</div>
							<div class="corruption">
								<a href="" class="action-a">대학비리고발</a>
							</div>
						</div>
						</c:if>
						<div class="apply-contents">
							<div class="guid-icon">
								<a href="#"><i class="fas fa-address-card"></i></a>
							</div>
							<div class="guid-text">
								<a href="#">교수노조<br>안내
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="agony-board-count">
					<div class="board-now-count">
						<p>게시글 수 : ${totalcount}</p>
					</div>
				</div>
				<div class="agony-list">
					<table>
						<tr>
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
							<tr>
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
								<td><c:if test="${li.aread eq 'Y'}">
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
				<div class="agony-paging">
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
