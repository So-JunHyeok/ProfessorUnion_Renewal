<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>전국교수노동조합</title>
<link rel="stylesheet" href="resources/css/main/reset.css">
<link rel="stylesheet" href="resources/css/main/header.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<script src="resources/js/slide.js" charset="utf-8"></script>
</head>
<style>
</style>
<script>

$(document).ready(function (){
	$(".main-menu li ul li").hide();
$(".phone-icon").on("click", function(){
	$(".menu-phone-drop").toggle();
}); 

$(".main-menu > li > a").on("click", function(e){
	
	$(".main-menu li ul li").toggle();
	
	if($(".main-menu > li > a").has(e.taget).length){
		$(".main-menu li ul li").hide();
	}
}); 
});

	function fullmenu(){
		$(".full-drop").show();
	}
	
	function fullCancel(){
		$(".full-drop").hide();
	}
	
$(window).resize(function (){
	  // width값을 가져오기
	  var width_size = window.outerWidth;
	  
	  // 800 이하인지 if문으로 확인
	  if (width_size >= 767) {
			$(".menu-phone-drop").hide();
	  }
		  
	})
	
</script>
<body>
	<div id="header">
		<div class="header-container">
			<div class="menu-top">
				<ul>
					<sec:authorize access="hasRole('ROLE_ADMIN')" var="b">
						<li><a href="#"><i class="fas fa-bell"></i></a> 
						<a href="RequestManagement"id="megcount">${acount}</a></li>
						<li><a href="admin_con">관리자</a></li>
					</sec:authorize>
					<li><a href="main.nhn">홈</a></li>
					<sec:authorize access="isAnonymous()">
						<li><a href="loginForm">로그인</a></li>
						<li><a href="join">회원가입</a></li>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()" var="b">
						<li><a href="logout">로그아웃</a></li>
						<li><a href="mypage?pageInfo=modify">마이페이지</a></li>
						<%-- <li><sec:authentication property="name"/>님이 로그인하셨습니다.</li> --%>
					</sec:authorize>
				</ul>
			</div>
			<div class="menu-bottom">
				<div class="menu-phone">

					<div class="phone-icon">
						<i class="fas fa-align-justify"></i>
					</div>
					<div class="phone-img">
						<img src="resources/img/main/123.png">
					</div>
				</div>
				<div class="menu">
					<ul>
						<li class="menu-li"><a class="menu-a" href=#>교수노조소개</a> 
							<ul>
								<li><a href="declaration.nhn?boardName=declaration">출범선언</a></li>
								<li><a href="propel.nhn?boardName=propel">추진배경/발자취</a></li>
								<li><a href="law.nhn?boardName=law">강령규약</a></li>
								<li><a href="branchboardGuidance">교수노조 안내</a></li>
								<li><a href="group.nhn?boardName=group">조직구성</a></li>
								<li><a href="executives.nhn?boardName=executives">임원소개</a></li>
								<li><a href="symbol.nhn?boardName=symbol">상징마크</a></li>
								<li><a href="map.nhn?boardName=map">오시는길</a></li>
							</ul></li>
						<li class="menu-li"><a class="menu-a" href="#">공지사항/언론보도</a>
							<ul>
								<li><a href="board_list.nhn?boardName=notice">공지사항</a></li>
								<!-- <li><a href="board_list.nhn?boardName=news">소식</a></li> -->
								<li><a href="board_list.nhn?boardName=press">언론보도</a></li>
							</ul></li>
						<li class="menu-li"><a class="menu-a" href="#">성명/보도자료</a>
							<ul>
								<li><a href="board_list.nhn?boardName=statement">성명서</a></li>
								<li><a href="board_list.nhn?boardName=report">보도자료</a></li>
								
							</ul></li>
						<li class="menu-li"><a class="menu-a" href="#">자료실</a>
							<ul>
								<li><a href="board_list.nhn?boardName=precedent">판례자료실</a></li>
									<li><a href="board_list.nhn?boardName=precedent">&nbsp;-재임용판례자료</a></li>
									<li><a href="board_list.nhn?boardName=precedent_Wage">&nbsp;-임금판례자료</a></li>
									<li><a href="board_list.nhn?boardName=precedent_Punishment">&nbsp;-징계판례자료</a></li>
								
								<li><a href="board_list.nhn?boardName=policy">정책자료실</a></li>
									<li><a href="board_list.nhn?boardName=policy">&nbsp;-법안자료</a></li>
									<li><a href="board_list.nhn?boardName=policy_debate">&nbsp;-토론자료</a></li>
								<li><a href="board_list.nhn?boardName=photo">사진자료실</a></li>
							</ul></li>
						<li class="menu-li"><a href="#">참여마당</a>
							<ul>
								<c:if test="${sessionID == null}">
								<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">조합원 신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
								<li><a href="partner.nhn">조합원 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">상담
											신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
									<li><a href="agonyWrite">상담 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">대학비리고발</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
										<li><a href="corruptionWrite">대학비리고발</a></li>
								</c:if>
							
								<li><a href="board_list.nhn?boardName=free">자유게시판</a></li>
								<li><a href="board_list.nhn?boardName=question">Q&A게시판</a></li> 
								<li><a href="question_list?boardName=question">내문의함</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="full-drop">
					<div class="full-drop-container">
						<div class="full-menu">
							<div class="full-menu-title">
								<h3 >교수노조소개</h3>
							</div>
							<div class="full-menu-contents">
								<ul>
									<li><a href="declaration.nhn?boardName=declaration">출범선언</a></li>
									<li><a href="propel.nhn?boardName=propel">추진배경/발자취</a></li>
									<li><a href="law.nhn?boardName=law">강령규약</a></li>
									<li><a href="branchboardGuidance">교수노조 안내</a></li>
									<li><a href="group.nhn?boardName=group">조직구성</a></li>
									<li><a href="executives.nhn?boardName=executives">임원소개</a></li>
									<li><a href="symbol.nhn?boardName=symbol">상징마크</a></li>
									<li><a href="map.nhn?boardName=map">오시는길</a></li>
								</ul>
							</div>
						</div>
						<div class="full-menu">
							<div class="full-menu-title">
								<h3>공지사항/언론보도</h3>
							</div>
							<div class="full-menu-contents">
								<ul>
									<li><a href="board_list.nhn?boardName=notice">공지사항</a></li>
									<!-- <li><a href="board_list.nhn?boardName=news">소식</a></li> -->
									<li><a href="board_list.nhn?boardName=press">언론보도</a></li>
								</ul>
							</div>
						</div>
						<div class="full-menu">
							<div class="full-menu-title">
								<h3>성명/보도자료</h3>
							</div>
							<div class="full-menu-contents">
								<ul>
									<li><a href="board_list.nhn?boardName=statement">성명서</a></li>
									<li><a href="board_list.nhn?boardName=report">보도자료</a></li>
								</ul>
							</div>
						</div>
						<div class="full-menu">
							<div class="full-menu-title">
								<h3>자료실</h3>
							</div>
							<div class="full-menu-contents">
								<ul>
									<li><a href="board_list.nhn?boardName=precedent">판례자료실</a></li>
										<li><a href="board_list.nhn?boardName=precedent">&nbsp;-재임용판례자료</a></li>
										<li><a href="board_list.nhn?boardName=precedent_Wage">&nbsp;-임금판례자료</a></li>
										<li><a href="board_list.nhn?boardName=precedent_Punishment">&nbsp;-징계판례자료</a></li>
									<li><a href="board_list.nhn?boardName=policy">정책자료실</a></li>
										<li><a href="board_list.nhn?boardName=policy">&nbsp;-법안자료</a></li>
										<li><a href="board_list.nhn?boardName=policy_debate">&nbsp;-토론자료</a></li>
									<li><a href="board_list.nhn?boardName=photo">사진자료실</a></li>
								</ul>
							</div>
						</div>
						<div class="full-menu">
							<div class="full-menu-title">
								<h3>참여마당</h3>
							</div>
							<div class="full-menu-contents">
								<ul>
										<c:if test="${sessionID == null}">
								<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">조합원 신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
								<li><a href="partner.nhn">조합원 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">상담
											신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
									<li><a href="agonyWrite">상담 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">대학비리고발</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
										<li><a href="corruptionWrite">대학비리고발</a></li>
								</c:if>
									<li><a href="board_list.nhn?boardName=free">자유게시판</a></li>
									<li><a href="board_list.nhn?boardName=question">Q&A게시판</a></li>
									<li><a href="question_list?boardName=myquestion">내 문의함</a></li>
								</ul>
							</div>
						</div>
						<div class="full-cancel" onclick="fullCancel()">
							<a href="#"> <i class="fas fa-times"></i>
							</a>
						</div>
					</div>
				</div>
				<div class="menu-icon" onclick="fullmenu()">
					<i class="fas fa-bars"></i> <a href="#">메 뉴</a>
				</div>
			</div>
		</div>
	</div>

	<div class="menu-phone-drop">
		<ul class="main-menu">
			<li><a href="#">교수노조소개</a>
				<ul>
					<li><a href="declaration.nhn?boardName=declaration">출범선언</a></li>
					<li><a href="propel.nhn?boardName=propel">추진배경/발자취</a></li>
					<li><a href="law.nhn?boardName=law">강령규약</a></li>
					<li><a href="branchboardGuidance?boardName=branch">교수노조 안내</a></li>
					<li><a href="group.nhn?boardName=group">조직구성</a></li>
					<li><a href="executives.nhn?boardName=executives">임원소개</a></li>
					<li><a href="symbol.nhn?boardName=symbol">상징마크</a></li>
					<li><a href="map.nhn?boardName=map">오시는길</a></li>
				</ul></li>
			<li><a href="#">공지사항/언론보도</a>
				<ul>
					<li><a href="board_list.nhn?boardName=notice">공지사항</a></li>
				<!-- 	<li><a href="board_list.nhn?boardName=news">소식</a></li> -->
					<li><a href="board_list.nhn?boardName=press">언론보도</a></li>
				</ul></li>
			<li><a href="#">성명/보도자료</a>
				<ul>
					<li><a href="board_list.nhn?boardName=statement">성명서</a></li>
					<li><a href="board_list.nhn?boardName=report">보도자료</a></li>
				</ul></li>
			<li><a href="#">자료실</a>
				<ul>
					<li><a href="board_list.nhn?boardName=precedent">판례자료실</a></li>
						<li><a href="board_list.nhn?boardName=precedent">&nbsp;-재임용판례자료</a></li>
						<li><a href="board_list.nhn?boardName=precedent_Wage">&nbsp;-임금판례자료</a></li>
						<li><a href="board_list.nhn?boardName=precedent_Punishment">&nbsp;-징계판례자료</a></li>
					<li><a href="board_list.nhn?boardName=policy">정책자료실</a></li>
						<li><a href="board_list.nhn?boardName=policy">&nbsp;-법안자료</a></li>
						<li><a href="board_list.nhn?boardName=policy_debate">&nbsp;-토론자료</a></li>
					<li><a href="board_list.nhn?boardName=photo">사진자료실</a></li>
				</ul></li>
			<li><a href="#">참여마당</a>
				<ul>
				<c:if test="${sessionID == null}">
								<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">조합원 신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
								<li><a href="partner.nhn">조합원 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">상담
											신청</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
									<li><a href="agonyWrite">상담 신청</a></li>
								</c:if>
								
								<c:if test="${sessionID == null}">
									<li><a href="#" onclick="javascript:alert('로그인이 필요합니다')">대학비리고발</a></li>
								</c:if>
								<c:if test="${sessionID != null }">
										<li><a href="corruptionWrite">대학비리고발</a></li>
								</c:if>
					<li><a href="board_list.nhn?boardName=free">자유게시판</a></li>
					<li><a href="question?boardName=myquestion">Q&A게시판</a></li>
				</ul></li>
		</ul>
	</div>

</body>
</html>
