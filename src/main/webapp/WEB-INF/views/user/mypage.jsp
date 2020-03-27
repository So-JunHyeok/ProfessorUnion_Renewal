<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/mypage.css">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="resources/js/mypage.js" charset="utf-8"></script>

<body>
<div id="wrap">

	<jsp:include page="/resources/header.jsp"/>
<div id="contents">
	<c:if test="${pageInfo != 'deletemember'}">
		<div class="container">
			<div class="choice">
			  <a href="mypage?pageInfo=modify" id="memberinfo">회원정보</a><a href="mypage?pageInfo=changepass" id="security">보안설정</a>
			</div>
		</div>
	</c:if>
<c:if test="${pageInfo eq 'modify'}">
	<div class="container">
	    <div class="left">
			<h3>My Info</h3>
			<div class="box" style="align-items: center; justify-content: center; display: flex;"><!-- 내 정보 -->
		        <div class="box_inner">
					<div class="input_inner">
						<span class="span1" id="">이름</span>
						<input type="text" class="input1" id="mb_name" aria-describedby="basic-addon1" value="${member.mb_name}" disabled>
					</div>
					<div class="input_inner">
						<span class="span1" id="">별명</span>
						<input type="text" class="input1" id="mb_nick" aria-describedby="basic-addon1" value="${member.mb_nick}" disabled>
					</div>
					<div class="input_inner">
						<span class="span1" id="">이메일</span>
						<input type="text" class="input1" id="mb_email" aria-describedby="basic-addon1" value="${member.mb_email}" disabled>
					</div>
					<div class="input_inner">
			            <input type="hidden" class="input1" id="pageInfo" aria-describedby="basic-addon1" value="${pageInfo}">
					</div>
					<button class="btn btn-default" id="myinfo_btn">수정</button>
					<button class="btn btn-default" id="myinfo_btn2" style="display: none;">확인</button>
		        </div>
			</div>
			<h3>My Scrap</h3>
			<div class="box"><!-- 스크랩 -->
				<div class="box_inner">
					<form action="deleteScrap" method="post">
						<div class="scrap-list">
							<table style="width: 100%;">
								<tr style="border-bottom: 2px solid #dadada;">
									<th>제목</th>
									<th>구분</th>
								</tr>
								<c:forEach items="${scrapList}" var="c" varStatus="s">
								<tr>
									<c:choose>
										<c:when test="${fn:length(c.wr_subject) > 15}">
											<td><a href="board_cont.nhn?wr_id=${c.wr_id}&boardName=${c.bo_table}">${fn:substring(c.wr_subject,0,30)}...</a></td>
										</c:when>
										<c:otherwise>
											<td><a href="board_cont.nhn?wr_id=${c.wr_id}&boardName=${c.bo_table}">${c.wr_subject}</a></td>
										</c:otherwise>
									</c:choose> 
									<td class="botable${s.index }"></td>
									<script type="text/javascript">
									var boardName = '${c.bo_table}'
									var i = '${s.index}'
									if(boardName=='notice'){
										$(".botable"+i).text("공지사항")
									}else if(boardName=='news'){
										$(".botable"+i).text("소식")
									}else if(boardName=='statement'){
										$(".botable"+i).text("성명서")
									}else if(boardName=='report'){
										$(".botable"+i).text("보도자료")
									}else if(boardName=='precedent'){
										$(".botable"+i).text("판례자료실")
									}else if(boardName=='photo'){
										$(".botable"+i).text("사진자료실")
									}else if(boardName=='policy'){
										$(".botable"+i).text("판례자료실")
									}else if(boardName=='free'){
										$(".botable"+i).text("자유게시판")
									}else if(boardName=='news'){
										$(".botable"+i).text("소식")
									}
									</script>
								</tr>
								</c:forEach>
							</table>
						</div>
						<div class="link-two">
					         <ul>
						         <li>
							        <c:if test="${scrappage >1 }">
							      		<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px; " href="mypage?pageInfo=modify&scrappage=${scrappage-1}&page=${page}">
							      		<i class="fas fa-angle-left"></i>
							      		</a>
							        </c:if>
						        	<c:forEach var="a" begin="${startpage}" end="${endPage}" step="1">
						        	<c:if test="${a==scrappage}">
						        		<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px; color: #0195ea;" href="mypage?pageInfo=modify&scrappage=${a}&page=${page}">${a}</a>
						        	</c:if>
						        	<c:if test="${a!=scrappage}">
						        		<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px;" href="mypage?pageInfo=modify&scrappage=${a}&page=${page}">${a}</a>
						        		</c:if>
						       		 </c:forEach>
						        	<c:if test="${scrappage < endPage }">
						      			<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px;" href="mypage?pageInfo=modify&scrappage=${scrappage+1}&page=${page}">
						      			<i class="fas fa-angle-right"></i>
						      			</a>
						       		 </c:if>
						        </li>
					        	</ul>
					          </div>
					</form>
				</div>
			</div>
		</div>
	    <div class="right">
	    
	    <h3>알림 서비스</h3>
			<div class="box"><!-- 메일수신, 개인정보공개 -->
				<div class="box_inner" style="display: grid">
					<div class="box_inner_service">
						<div class="" id="">
							<label for="mb_mailling">메일링 서비스</label>
							<div class="service_checkbox">
								<label class="switch">
									<input type="checkbox" name="mb_mailling" id="mb_mailling" value="${member.mb_mailling}">
									<span class="slider round"></span>
								</label>
								<p class="mb_mailling" id="mb_mailling_off">OFF</p>
								<p class="mb_mailling" id="mb_mailling_on">ON</p><br/>
							</div>
						</div>
						<div class="" id="">
							<label for="mb_open">정보공개</label>
							<div class="service_checkbox">
								<label class="switch">
									<input type="checkbox" name="mb_open" id="mb_open" value="${member.mb_open}">
									<span class="slider round"></span>
								</label>
								<p class="mb_open" id="mb_open_off">OFF</p>
								<p class="mb_open" id="mb_open_on">ON</p><br/>
							</div>
						</div>
					</div>
				</div>
			</div>
	    
	    
	    
			<h3>상담신청</h3>
			<div class="box"><!-- 상담 신청 -->
				<div class="box_inner">
					<form action="deleteScrap" method="post">
						<div class="scrap-list">
							<table style="width: 100%;">
								<tr style="border-bottom: 2px solid #dadada;">
									<th>글번호</th>
									<th>제목</th>
									<th>작성시간</th>
								</tr>
							    <c:forEach items="${agonyList}" var="list" varStatus="status">
							    <tr>
							      <td>${list.anum}</td>
							      <td><a href="agonyDetail?anum=${list.anum}">${fn:substring(list.atitle,0,10)}...</a></td>
							      <td>${list.adate}</td>
							    </tr>
							    </c:forEach>
							</table>
							  <div class="box-footer">
							  	<div class="text-center">
							  	<div class="link-two">
							  		<ul class="pagination">
							  		<li>
							  		<c:if test="${page >1 }">
							      		<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px; " href="mypage?pageInfo=modify&page=${page-1}&scrappage=${scrappage}">
							      		<i class="fas fa-angle-left"></i>
							      		</a>
							        </c:if>
							  			<c:forEach var="idx" begin="${pageMaker.startPage}" end="${pageMaker.endPage}" step="1">
								  			<c:if test="${idx==page}">
							        			<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px; color: #0195ea;" href="mypage?pageInfo=modify&page=${idx}&scrappage=${scrappage}">${idx}</a>
							        		</c:if>
							        		<c:if test="${idx!=page}">
							        			<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px;" href="mypage?pageInfo=modify&page=${idx}&scrappage=${scrappage}">${idx}</a>
							        		</c:if>
							  			</c:forEach>
						        	 	<c:if test="${page < pageMaker.endPage}">
							      			<a style="border: 1px solid #0195ea; font-weight: bold;  width:20px; height:20px;" href="mypage?pageInfo=modify&page=${page+1}&scrappage=${scrappage}">
							      				<i class="fas fa-angle-right"></i>
							      			</a>
						       		 	</c:if>
							  		</li>
							  		</ul>
							  		</div>
							  	</div>
							  </div>
						</div>
					</form>
				</div>
			</div>
			
		</div>
	</div>
	<div class="container">
		<div class="footer">
			<p>본 사이트를 더이상 이용하지 않는다면</p><a href="mypage?pageInfo=deletemember">회원탈퇴 바로가기&#8618;</a>
		</div>
	</div>
</c:if> 
<c:if test="${pageInfo eq 'changepass'}">
	<div class="modify_container"> 
		<div id="MemberContent">
			<div id="modify_pass">
				<div class="modify_member">
					<div class="modify_title">
						<h2 class="title">비밀번호 변경 페이지</h2><br/>
					</div>
					<div class="small_title">
						<p class="small_content" style="text-decoration: underline;">안전한 비밀번호로 내 정보를 보호하세요</p><br/>
					</div>
					<div class="small_title">
						<p class="small_content" style="color:red;">다른 아이디/사이트에서 사용한 적 없는 비밀번호</p><br/>
					</div>
					<div class="small_title">
						<p class="small_content" style="color:red;">이전에 사용한 적 없는 비밀번호</p><p class="small_content">가 안전합니다.</p><br/>
					</div>
					<div class="beforpass">
						<input type="password" name="befor_password" class="form-control" id="befor_password" size="45" placeholder="현재 비밀번호" style="font-weight:bold;">
						<p id="befor_password_result"></p>
	 				</div>
	 				<div class="afterpass">
						<input type="password" name="after_password" class="form-control" id="after_password" size="45" placeholder="새 비밀번호" style="font-weight:bold;">
						<input type="password" name="after_repassword" class="form-control" id="after_repassword" size="45" placeholder="새 비밀번호 확인" style="font-weight:bold;"><br/>
						<p id="after_password_result"></p>
					</div>
				</div>
				<div class="rebutton">
					<button type="button" name="button" id="passchange_btn">확인</button>
				</div>
			</div>
		</div>
	</div>
</c:if>
<c:if test="${pageInfo eq 'deletemember'}">
	<div class="delete_container">
		<div id="DeleteContent">
			<div id="center">
				<div class="modify_member">
					<div class="modify_title">
						<h4 class="title">회 원 탈 퇴</h4><br/>
					</div>
					<p class="warning_title">&#10004; 사용하고 계신 아이디(${member.mb_id})는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</p><br/>
					<div class="small_title">
						<p class="small_content" style="color:red;">탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</p><p class="small_content">하오니 신중하게 선택하시기 바랍니다.</p><br/>
					</div>
					<p class="warning_title">&#10004; 탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</p><br/>
					<div class="small_title">
						<p class="small_content">회원정보 및 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.</p><br/>
					</div>
					<p class="warning_title">&#10004; 탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</p><br/>
					<div class="small_title">
						<p class="small_content">해당 아이디로 올린 게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.</p><br/>
					</div>
					<div class="small_title">
						<p class="small_content">삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.</p><br/>
					</div>
					<div class="small_title">
						<p class="small_content">탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</p><br/>
					</div>
					<div class="beforpass">
						<p>${member.mb_id}</p>
						<input type="password" name="delete_password" class="form-control" id="delete_password" size="45" placeholder="비밀번호 확인" style="font-weight:bold;"><br/>
						<p id="delete_password_result"></p>
						<div class="rebutton">
							<button type="button" name="button" id="delete_btn">확인</button>
							<button type="button" name="button" id="cancel_btn" onclick="location.href='mypage?pageInfo=modify'">취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:if>
  </div>
</div>
</body>
</html>