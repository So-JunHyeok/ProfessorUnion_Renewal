<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="resources/css/AdminHeader.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<script type ="text/javascript" src="resources/js/jquery-3.3.1.min.js" charset="UTF-8"></script>

<script type ="text/javascript">
function readURL(input) {
	 
    if (input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#image_section').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}
function read1URL(input) {
	 
    if (input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#previews1').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}
function read2URL(input) {
	 
    if (input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#previews2').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}
function read3URL(input) {
	 
    if (input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#previews3').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}
$(document).ready(function(){
	 var value = $('#mainbanner').attr('value');
	 var value1 = $('#prbanner1').attr('value');
	 var value2 = $('#prbanner2').attr('value');
	 var value3 = $('#prbanner3').attr('value');
	
		$('#image_section').attr('src', value);	 
		$('#previews1').attr('src', value1);	 
		$('#previews2').attr('src', value2);	 
		$('#previews3').attr('src', value3);	 
});
function img_btn1(){
	var value1 = $('#prbanner1').attr('value',"" );
	$('#previews1').attr('src', value1);
}
function img_btn2(){
	var value1 = $('#prbanner2').attr('value',"" );
	$('#previews2').attr('src', value1);
	
}
function img_btn3(){
	var value1 = $('#prbanner3').attr('value',"" );
	$('#previews3').attr('src', value1);
}
	
	 
</script>


<title>${getConfigContemt.cf_title}</title>
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
    <div class="side_content_box">
      <div class="side_box">
        <div class="home_logout_box">
          <h3 class="Home"><a href="main.nhn">HOME</a></h3><p>|</p><h3 class="Logout"><a href="logout">LOGOUT</a></h3>
        </div>

        <div class="side_title">
          <h3>환경설정</h3>
        </div>
<!--         <div class="subtitle_1">
          <h4><a href="admin_con">기본환경설정</a></h4>
        </div> -->

<!--         <div class="subtitle_1">
          <h4><a href="#">게시판/회원설정</a></h4>
        </div> -->





      </div>
        <div class="content_area">
        
          <form action="admin_config" method="post"  enctype="multipart/form-data">
          <div class="content_box">
            <div class="content_title">
              <div>
                <h3>기본환경설정</h3>
              </div>
              <div class="config_sumit">
                <input class="submitbt" type="submit" name="cf_Adminconfig" value="수정" style="margin-left: 1170px;">
              </div>
            </div>
            
           
          
                
           
            <div class="content_body">
            
				
				
			
              <div class="content_body_left">
              
              
              

                <div class="content_img">
                  <div class="subject">
                  <p style="font-size: 14px;">메인베너이미지등록</p>
                <input type="file" id="mainbanner" name="mainbanner" onchange="readURL(this)" value="<c:url value='resources/community/imageUpload/${MainImg}'/>">
                <button style="margin-left: 460px;">삭제</button>
                </div>
                  <img src="" alt="" id="image_section">
                </div>
                
                <div class="content_img">
                  <div class="subject">
                  <p style="font-size: 14px;">선전홍보물등록</p>
                  <input type="file" id= "prbanner1" name="prbanner1"  onchange="read1URL(this)" style="width: 185px;" value="<c:url value='resources/community/imageUpload/${PrImg1}'/>">
                  <button id="prbanner1del" onclick="img_btn1()")">삭제</button>
                  <input type="file" id= "prbanner2" name="prbanner2"  onchange="read2URL(this)" style="width: 170px; margin-left: 40px;" value="<c:url value='resources/community/imageUpload/${PrImg2}'/>">
                  <button id="prbanner2del" onclick="img_btn2()">삭제</button>
                  <input type="file" id= "prbanner3" name="prbanner3"  onchange="read3URL(this)" style="width: 180px; margin-left: 40px;" value="<c:url value='resources/community/imageUpload/${PrImg3}'/>">
                  <button id="prbanner3del" onclick="img_btn3()">삭제</button>
                  
                  
                  </div>
                  <div class="pr_img">
                    <img src="" alt="" id= "previews1">
                    <img src="" alt="" id= "previews2">
                    <img src="" alt="" id= "previews3">
               
                  </div>
                </div>

                
              <%--   <div class="check_box">
                  <br>
                  <span>복사,이동시로그남김&nbsp;&nbsp;</span><input type="checkbox" name="cf_use_copy_log" value="${getConfigContemt.cf_use_copy_log}">&nbsp;사용하기<br>
                  
                </div> --%>
                
                
                 
                
                
                
                
              </div>

             <%--<div class="content_body_rigth">
             
             	
             
                <div class="content_input" style="margin-top: 50px;">
                  <br>
                  <p>홈페이지제목</p>
                  <input type="text" name="cf_title" value="${getConfigContemt.cf_title}">
                </div>
                <div class="content_nuber">
                  <br>
                  <p>최고관리자</p>
                  <input type="text" name="cf_admin" value="${getConfigContemt.cf_admin}">
                </div>
                <div class="content_nuber">
                  <br>
                  <p>인기검색어삭제</p>
                  <input type="number" name="cf_popular_del" min="10" max="180" value="${getConfigContemt.cf_popular_del}"><span>&nbsp;일</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>정보공개수정</p>
                  <input type="number" name="cf_open_modify" min="10" max="180" value="${getConfigContemt.cf_open_modify}"><span>&nbsp;일 이후 변경가능</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>현재접속자</p>
                  <input type="number" name="cf_login_minutes" min="10" max="180" value="${getConfigContemt.cf_login_minutes}"><span>&nbsp;분</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>접속자로그삭제</p>
                  <input type="number" name="cf_visit_del" min="10" max="180" value="${getConfigContemt.cf_visit_del}" ><span>&nbsp;일</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>최근게시물라인수</p>
                  <input type="number" name="cf_new_rows" min="10" max="180" value="${getConfigContemt.cf_new_rows}"><span>&nbsp;라인</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>이름(별명)표시</p>
                  <input type="number" name="cf_cut_name" min="10" max="180" value="${getConfigContemt.cf_cut_name}"><span>&nbsp;자리</span>
                </div>
                <div class="content_nuber">
                  <br>
                  <p>별명수정</p>
                  <input type="number" name=cf_nick_modify"" min="10" max="180" value="${getConfigContemt.cf_nick_modify}"><span>&nbsp;일 이후 변경가능</span>
                </div>
                <div class="content_text">
                  <br>
                  <p>접근차단IP</p>
                  <textarea name="cf_intercept_ip" cols="50" rows="7" value="${getConfigContemt.cf_intercept_ip}"></textarea>
                </div>
              </div> --%>


			



            </div>
            
             <div class="content_body_leftTop" style="display: flex; margin-top: 20px; margin-bottom: 20px;" >
					<div style="width: 50%; margin-left: 210px;">

					 <p style="font-size: 14px;">홈페이지제목</p>
                  <input type="text" name="cf_title" value="${getConfigContemt.cf_title}">
                  <br>
                  <br>
                 <%--  <p style="font-size: 14px;">인기검색어삭제</p>
                  <input type="number" name="cf_popular_del" min="10" max="180" value="${getConfigContemt.cf_popular_del}"><span>&nbsp;일</span>
                  <br>
                  <br>
                  <p style="font-size: 14px;">접속자로그삭제</p>
                  <input type="number" name="cf_visit_del" min="10" max="180" value="${getConfigContemt.cf_visit_del}" ><span>&nbsp;일</span> --%>
					</div>
					<div style="width: 50%; margin-right: 105px;">
					<p style="font-size: 14px;">단어필터링</p>
                  <textarea name="cf_filter" cols="45" rows="10">${getConfigContemt.cf_filter}</textarea>
                  	</div>
					</div>

          </div>
          </form>
        </div>
      </div>
    </div>



</body>





</html>