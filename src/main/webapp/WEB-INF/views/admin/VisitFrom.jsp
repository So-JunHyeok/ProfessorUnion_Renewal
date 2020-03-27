<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/AdminHeader.css">
<link rel="stylesheet" href="resources/css/MemberManagent.css">
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
        	alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
        	
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
          <form id="formid" action="MemberManagementmodify" method="post" ">
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>접속자현황</h3>
              </div>
              <!-- <div class="config_sumit">
              
              
              관리자 비밀번호를 입력해야 매핑값 전달 가능 
                <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value="">
                <input type="button" name="membermodify" value="제출"  onclick="listSubmit()" >
                <span><input type="text" name="seach_text" value="검색"><button href="#">검색</button></span>
              </div> -->
            </div>
            <div class="content_body1">
            <div class="table_area">
				<table>
					<tr>
						<th>IP</th>
						<th>접속경로</th>
						<th>브라우저</th>
						<th>일시</th>
					</tr>
				
				<c:forEach var="visit" items="${visit}">
					<tr style="font-size: 12px;">
						<td>${visit.vi_ip}</td>
						<td>${visit.vi_referer}</td>
						<td>${visit.vi_agent}</td>
						<td>${visit.vi_date}</td>
					</tr>				
				
				
				</c:forEach>
				
				</table>
			
				<!-- <input type="button" onclick="memberchkeel()" value="선택삭제" style="float: right;"> -->
              </div>
              <br>
              <div class="pagingarea" style="text-align: center;">
              <c:if test="${StartPage > 1}">
              <span><a href="visitHistory.nhn?PagNum=${StartPage - pageblock}">이전</a></span>
              </c:if>
              <c:forEach var = "PagNum" begin="${StartPage}" end="${EndPage}">
              	<span><a href="visitHistory.nhn?PagNum=${PagNum}">${PagNum}</a></span>
			  </c:forEach>
			  <c:if test="${EndPage < Pageconut}">
              <span><a href="visitHistory.nhn?PagNum=${PagNum + pageblock}">다음</a></span>
              </c:if>
              	
              </div>

            </div>

          </div>
			</form>
        </div>
      </div>
    </div>



</body>





</html>