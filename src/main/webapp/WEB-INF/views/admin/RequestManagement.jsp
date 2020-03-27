<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	
function wordfilter(){
	alert("스크립트실행됨");
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
		alert(filter[i])
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
          <h3>요청관리</h3>
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
          <form id="formid" action="MemberManagementmodify" method="post" ">
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>요청관리</h3>
              </div>
              <div class="config_sumit">
              
              
              <!-- 관리자 비밀번호를 입력해야 매핑값 전달 가능  -->
                <!-- <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value=""> -->
           <!--      <input type="button" name="membermodify" value="제출"  onclick="listSubmit()" > -->
       <!--          <span><input id="test" type="search" name="seach_text" value="검색"><button href="#" onclick="wordfilter()">검색</button></span> -->
              </div>
            </div>
            <div class="content_body1">
			<div class="table_area">
			 <div class="list-table" style="margin-bottom: 20px;">
			 <h5>상담신청</h5>
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
              </div>
              <br>
              
              
              <div class="table_area">
               <div class="list-table"style="margin-bottom: 20px;">
               <h5>대학비리고발</h5>
				<table>
					<tr>

						<th>번호</th>
						<th>대학유형</th>
						<th>소속대학</th>
						<th>제목</th>
						<th>실명</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>읽음여부</th>

						
							<c:forEach items="${corrup}" var="li">
			            <tr>
			              <td>${li.ct_num}</td>
			              <td><a href="corruptionDetail?ct_num=${li.ct_num}">${li.ct_authority}</a></td>
			              <td><a href="corruptionDetail?ct_num=${li.ct_num}">${li.ct_university}</a></td>
			              <td>
			                <c:choose>
			  					<c:when test="${fn:length(li.ct_title) > 20 }">
			  						<a href="corruptionDetail?ct_num=${li.ct_num}">${fn:substring(li.ct_title,0,20)}...</a>
			  					</c:when>
			
			  					<c:otherwise>
			  						<a href="corruptionDetail?ct_num=${li.ct_num}">${li.ct_title}</a>
			  					</c:otherwise>
			  				</c:choose>
			              </td>
			              <td>${li.ct_name}</td>
			              <td>${li.ct_id}</td>
			              <td>${li.ct_date}</td>
			              <td>
			                <c:if test="${li.ct_read eq 'Y'}">
			                  <i class="far fa-envelope-open"></i>
			                </c:if>
			                <c:if test="${li.ct_read eq 'N'}">
			                  <i class="far fa-envelope"></i>
			                </c:if>
			              </td>
			            </tr>
			            </c:forEach>
				
		
				
				
				</table>
				</div>
              </div>
              <br>
              
              
              
              <div class="table_area">
               <div class="list-table"style="margin-bottom: 20px;">
               <h5>Q&A</h5>
				<table>
					<tr>

			              <th>번호</th>
			              <th>제목</th>
			              <th>작성자</th>
			              <th>날짜</th>
			              <th>조회</th>
			 

						
							<c:forEach items="${quest}" var="li">
			            <tr>
			              <td>${li.wr_id}</td>
			              <td><a href="board_cont.nhn?wr_id=${li.wr_id}&boardName=question">${li.wr_subject}</a></td>
			              <td><a href="board_cont.nhn?wr_id=${li.wr_id}&boardName=question">${li.mb_id}</a></td>
			              <%-- <td>
			                <c:choose>
			  					<c:when test="${fn:length(li.ct_title) > 20 }">
			  						<a href="corruptionDetail?ct_num=${li.ct_num}">${fn:substring(li.ct_title,0,20)}...</a>
			  					</c:when>
			
			  					<c:otherwise>
			  						<a href="corruptionDetail?ct_num=${li.ct_num}">${li.ct_title}</a>
			  					</c:otherwise>
			  				</c:choose>
			              </td> --%>
			              <%-- <td>${li.ct_name}</td> --%>
              		      <td>${li.wr_datetime}</td>
			              <td>${li.wr_hit}</td>
<%-- 			              <td>
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
              </div>
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              
              


            </div>

          </div>
			</form>
        </div>
      </div>
    </div>



</body>





</html>