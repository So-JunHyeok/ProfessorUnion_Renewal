<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/AdminHeader.css">
<link rel="stylesheet" href="resources/css/MemberManagent.css">
<link rel="stylesheet" href="resources/css/main.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type ="text/javascript" src="resources/js/jquery-3.3.1.min.js" charset="UTF-8"></script>



<script type ="text/javascript">
$(document).ready(function(){
	
	
    //최상단 체크박스 클릭
    $("#checkall").click(function(){
        //클릭되었으면
        if($("#checkall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=check]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=check]").prop("checked",false);
        }
    })
})
function listSubmit(){
	alert("수정실행")
	var inputdata = $("#formid").serialize()
	console.log(inputdata);
	$.ajax({
        url   :  "MemberManagementmodify",
        type : 'POST',
        cache : false,
        data :  inputdata,
        dataType : 'json',
        success: function(data) {
        	alert("성공적으로 수정했습니다.")
        	window.location.href = "MemberManagement.nhn";
         }
        ,error: function(request,status,error) {
        	alert("code = "+ request.status + " message = " 
        	+ request.responseText + " error = " + error); 							// 실패 시 처리
        }
	});
}
function memberchkeel(){
	var count = 0
	
	$(".checked").each(function(){
	if($(this).prop("checked")){
			count++
		}
	})
	
	if(count>0){
	var inputdata = $("#formid").serialize()
	 $.ajax({
        url   :  "MemberManagementdel",
        type : 'POST',
        cache : false,
        data :  inputdata,
        dataType : "json",
        success: function(data) {
        	alert("성공적으로 수정했습니다.")
        	location.href = "MemberManagement.nhn";
         }
        ,error: function(request,status,error) {
        	console.log("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
        	
        }
	}); 
	}else{
		alert("한개 이상 체크하세요")
	}
}
	
function wordfilter(){
/* 	alert("스크립트실행됨"); */
	var filter = new Array(); 
	var filterdate =  "<c:out value="${getConfigContemt.cf_filter}"/>"
/* 	alert(filterdate); */
	filter = filterdate.split(",");
/* 	alert(filter[2]); */
	var ckc = [" ",".","-","/","*","[","]","=","#"];
	var position;
	var txt = $('#test').val();
/* 	alert(txt); */	
	for(var i in filter){
		position = txt.indexOf(ckc[i]);
		while(position != -1){
			txt = txt.replace(ckc[i],"");
			position = txt.indexOf(ckc[i]);
		}
	}
	
	for(i=0; i<filter.length ; i++){
/* 		alert(filter[i]) */
		if(txt.match(filter[i])){
/* 			alert(filter[i]);
			alert(filter[i] + '라는 문자는 사용할 수 없음'); */
			return;
		}
	}
/* 	alert('금지단어 없음'); */
/* 	return; */
		
	}
	
		
		
</script>





<title>회원관리</title>
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
          <h3>회원관리</h3>
        </div>
        <div class="subtitle_1">
          <h4><a href="MemberManagement.nhn">회원관리</a></h4>
        </div>

        <div class="subtitle_1">
          <h4><a href="visitHistory.nhn">접속자현황</a></h4>
        </div>




      </div>
        <div class="content_area">
        
        <!-- 수정된 정보의 값을 action매핑을오 전달한다.  -->
   
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>회원관리</h3>
              </div>
              <form action="MemberManagement.nhn" method="post">
              <div class="config_sumit">
              <!-- 관리자 비밀번호를 입력해야 매핑값 전달 가능  -->
    <!--      <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value=""> -->
                <select name="searchOption">
                	<option value="idsearch">아이디</option>
                	<option value="namesearch">이름</option>
                	<option value="nicksearch">별명</option>
                </select><input id="test" type="search" name="keyword"><input class="submitbt" type="submit" onclick="wordfilter()" value="검색">
				<input class="submitbt" type="button" name="membermodify" value="수정"  onclick="listSubmit()" style="margin-left: 855px;" >
              </div>
              </form>
            </div>
       
			<form id="formid" action="MemberManagementmodify" method="post">
            <div class="contents">
            <div class="container">
            
            <div class="agony-board-count">
			<div class="board-now-count">
			
			</div>
			</div>
            <div class="list-table">
				<table>
					<tr>
						<th><input type="checkbox" id="checkall"></th>
						<th>회원아이디</th>
						<th>이름</th>
						<th>별명</th>
						<th>권한</th>
						<th>최종접속</th>
						<th>정보공개</th>
						<th>차단</th>
						<th>회원정보</th> 
						<th>삭제</th> 
						
					</tr>
					<c:forEach var="member" items="${member}" varStatus="s">
					<tr>
						<!-- 회원목록 전체선택 및 선택  -->
						
						
						
						
						<!-- 회원아이디 input hidden으로 값을 전송 -->
						<td class="select">
						<input class="checked" type="checkbox" name="check" value="${member.mb_id}">
						</td>
						<td class="mb_id">${member.mb_id}<input type="hidden" name="mb_id" value="${member.mb_id}">
						<td id="mb_name">${member.mb_name}</td>
						<td id="mb_nick">${member.mb_nick}</td>
						<td id="mb_level">
	
						<!-- db의 저장되어 있는 값을 기본 값으로 설정되도록 함.  -->
							<c:set var="level" value="${member.mb_level}"></c:set>
							<select class="memberlevel" name="mb_level">
								<option  value="0">선택없음</option>
								<option  value="3"<c:if test="${'3' eq level}">selected</c:if>>임원등급</option>
								<option  value="2"<c:if test="${'2' eq level}">selected</c:if>>조합원</option>
								<option  value="1"<c:if test="${'1' eq level}">selected</c:if>>일반회원</option>
								<option  value="4"<c:if test="${'4' eq level}">selected</c:if>>관리자</option>
							</select>
						</td>
						<td><p>${member.mb_today_login}</p></td>
						<td>
						<c:set var="block" value="${member.mb_open}"></c:set>
						<select class="mb_open" name="mb_open">
							<option  value="0"<c:if test="${'0' eq block}">selected</c:if>>비공개</option>								
							<option  value="1"<c:if test="${'1' eq block}">selected</c:if>>공개</option>
						</select>
						</td>
						<td>
						<select class="mb_intercept_date" name="mb_intercept_date">
							<option value="1" <c:if test="${'0' ne member.mb_intercept_date or '' ne member.mb_intercept_date or null ne member.mb_intercept_date}">selected</c:if>>차단</option>
							<option value="0" <c:if test="${'0' eq member.mb_intercept_date or '' eq member.mb_intercept_date or null eq member.mb_intercept_date}">selected</c:if>>허용</option>
						</select>
						
						</td>
					
				
						<td><a href="adminmypage?pageInfo=mypage&mb_id=${member.mb_id}">회원정보</a></td>
						<td><a href="memberOnedel?mb_id=${member.mb_id}">삭제</a></td>
						
						
						
					</tr>
				
					</c:forEach>
				
				
				</table>
				<input class="submitbt" type="button" onclick="memberchkeel()" value="선택삭제" style="margin-left: 1120px;">
			  </div>
            
              <br>
              <div class="pagingarea" style="text-align: center;">
              <c:if test="${StartPage > 1}">
              <span><a href="MemberManagement.nhn?PagNum=${StartPage - pageblock}">이전
              </c:if>
              <c:forEach var = "PagNum" begin="${StartPage}" end="${EndPage}">
              	<span><a href="MemberManagement.nhn?PagNum=${PagNum}">${PagNum}</a></span>
			  </c:forEach>
			  <c:if test="${EndPage < Pageconut}">
              <span><a href="MemberManagement.nhn?PagNum=${PagNum + pageblock}">다음</a></span>
              </c:if>
              	
              </div>
			</div>
            </div>
				</form>
          </div>
		
        </div>
      </div>
    </div>



</body>





</html>