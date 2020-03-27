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

<style type="text/css">
.table_area select{
width: 40px;
}
</style>

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
function listSubmit1(){
	alert("수정실행")
	var inputdata = $("#formid").serialize()
	console.log(inputdata);
	
	$.ajax({
        url   :  "BoardLevelManagementmodify",
        type : 'POST',
        cache : false,
        data :  inputdata,
        dataType : 'json',
        success: function(data) {
        	alert("성공적으로 수정했습니다.")
        	window.location.href = "BoardManagement.nhn";
         }
        ,error: function(request,status,error) {
        	alert("code = "+ request.status + " message = " 
        + request.responseText + " error = " + error);                                         // 실패 시 처리
        	
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
/* 	alert(txt) */;	
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
          <h3>게시판관리</h3>
        </div>
<!--         <div class="subtitle_1">
          <h4><a href="MemberManagement.nhn">회원관리</a></h4>
        </div>
        <div class="subtitle_1">
          <h4><a href="visitHistory.nhn">접속자현황</a></h4>
        </div> -->




      </div>
        <div class="content_area">
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>게시판관리</h3>
              </div>
     <!--          <form action="MemberManagement.nhn" method="post"> -->
              <div class="config_sumit">
              <!-- 관리자 비밀번호를 입력해야 매핑값 전달 가능  -->
    <!--      <span>관리자비밀번호입력</span><input type="password" name="cf_adminpass" value=""> -->
<!--                 <select name="searchOption">
                	<option value="idsearch">아이디</option>
                	<option value="namesearch">이름</option>
                	<option value="nicksearch">별명</option>
                </select>
                <span><input id="test" type="search" name="keyword" value="검색"><input type="submit" onclick="wordfilter()">검색</span> -->
              </div>
             <!--</form> -->
			<input type="button" name="boardmodify" value="수정"  onclick="listSubmit1()" style="margin-left: 1169px;"">
            </div>
			<form id="formid" action="BoardLevelManagementmodify" method="post">
			<div class="contents">
            <div class="container">
			
			
            <div class="agony-board-count">
			<div class="board-now-count">
			
			</div>
			</div>
            <div class="list-table1">
				<table>
					<tr>
				
						<th>테이블이름</th>
						<th>게시판제목</th>
						<th>목록보기권한</th>
						<th>읽기권한</th>
						<th>쓰기권한</th>
						<th>답변쓰기권한</th>
						<th>댓글쓰기권한</th>
						<th>업로드권한</th> 
						<th>다운로드권한</th> 
						
					</tr>
					<c:forEach var="boardLevel" items="${BoardLevelList}" varStatus="s">
					<tr>
						<!-- 회원목록 전체선택 및 선택  -->
						
						
						
						
						<!-- 회원아이디 input hidden으로 값을 전송 -->
						<td>${boardLevel.bo_table} <input type="hidden" name="bo_table" value="${boardLevel.bo_table}"></td>
						<td>${boardLevel.bo_subject} <input type="hidden" name="bo_subject" value="${boardLevel.bo_subject}"></td>
						<td>
						<select name="bo_list_level">
						<option value="0"<c:if test="${boardLevel.bo_list_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_list_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_list_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_list_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_list_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						
						<td>
						<select name="bo_read_level">
						<option value="0"<c:if test="${boardLevel.bo_read_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_read_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_read_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_read_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_read_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						
						<td>
						<select name="bo_write_level">
						<option value="0"<c:if test="${boardLevel.bo_write_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_write_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_write_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_write_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_write_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						
						<td>
						<select name="bo_reply_level">
						<option value="0"<c:if test="${boardLevel.bo_reply_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_reply_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_reply_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_reply_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_reply_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						
						<td>
						<select name="bo_comment_level">
						<option value="0"<c:if test="${boardLevel.bo_comment_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_comment_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_comment_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_comment_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_comment_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						<td>
						<select name="bo_upload_level">
						<option value="0"<c:if test="${boardLevel.bo_upload_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_upload_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_upload_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_upload_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_upload_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
						<td>
						<select name="bo_download_level">
						<option value="0"<c:if test="${boardLevel.bo_download_level eq '0'}">selected</c:if>>비회원</option>
						<option value="1"<c:if test="${boardLevel.bo_download_level eq '1'}">selected</c:if>>일반회원</option>
						<option value="2"<c:if test="${boardLevel.bo_download_level eq '2'}">selected</c:if>>조합원</option>
						<option value="3"<c:if test="${boardLevel.bo_download_level eq '3'}">selected</c:if>>임원</option>
						<option value="4"<c:if test="${boardLevel.bo_download_level eq '4'}">selected</c:if>>관리자</option>
						</select>
						</td>
					
			
					
				
	
						
						
					</tr>
				
					</c:forEach>
				
				
				</table>
        	
			
				<%-- <input type="button" onclick="memberchkeel()" value="선택삭제" style="float: right;">
              </div> --%>
              <br>
              <div class="pagingarea" style="text-align: center;">
              <%-- <c:if test="${StartPage > 1}">
              <span><a href="MemberManagement.nhn?PagNum=${StartPage - pageblock}">이전</a></span>
              </c:if>
              <c:forEach var = "PagNum" begin="${StartPage}" end="${EndPage}">
              	<span><a href="MemberManagement.nhn?PagNum=${PagNum}">${PagNum}</a></span>
			  </c:forEach>
			  <c:if test="${EndPage < Pageconut}">
              <span><a href="MemberManagement.nhn?PagNum=${PagNum + pageblock}">다음</a></span>
              </c:if>
              	 --%>
             
              </div>
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