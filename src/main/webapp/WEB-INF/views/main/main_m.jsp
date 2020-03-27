 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>전국교수노동조합</title>
  <link rel="stylesheet" href="resources/css/main/reset.css">
  <link rel="stylesheet" href="resources/css/main/index.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<script src="http://code.jquery.com/jquery.min.js"></script>
  <script src="resources/js/slide.js" charset="utf-8"></script> 
  
  <script>
  	function tabclick(){
	  $('.name-title').css("border-top" , "none")
	  $('.name-title').css("border-left" , "none")
	  $('.name-title').css("border-right" , "none")
	  $('.name-title').css("border-bottom" , "2px solid #23539b")
	  
	  $('.sidewalk-title').css("border-top" , "2px solid #23539b")
	  $('.sidewalk-title').css("border-left" , "2px solid #23539b")
	  $('.sidewalk-title').css("border-right" , "2px solid #23539b")
	  $('.sidewalk-title').css("border-bottom" , "none")
	  $('.sidewalk-title').css("border-top-left-radius" , "10px")
	  $('.sidewalk-title').css("border-top-right-radius" , "10px")
	  
	  $(".name-middle-two").show()
	  $(".name-middle").hide()
	  $(".name-plus a").attr("href","board_list.nhn?boardName=report")
  	}
  	
  	function tabclick2(){
  	  $('.sidewalk-title').css("border-top" , "none")
	  $('.sidewalk-title').css("border-left" , "none")
	  $('.sidewalk-title').css("border-right" , "none")
	  $('.sidewalk-title').css("border-bottom" , "none")
	  $('.sidewalk-title').css("border-top-left-radius" , "none")
	  $('.sidewalk-title').css("border-top-right-radius" , "none")
	  $('.sidewalk-title').css("border-bottom" , "2px solid #23539b")
  	  
  	  $('.name-title').css("border-top" , "2px solid #23539b")
  	  $('.name-title').css("border-left" , "2px solid #23539b")
  	  $('.name-title').css("border-right" , "2px solid #23539b")
  	  $('.name-title').css("border-bottom" , "none")
  	  $('.name-title').css("border-top-left-radius" , "10px")
  	  $('.name-title').css("border-top-right-radius" , "10px")
  	  
	  $(".name-middle").show()
	  $(".name-middle-two").hide()
    	}
  </script>
  

 <script type="text/javascript">
function PrImg1() {
var url ="resources/community/imageUpload/${PrImg1}";
var name = "PrImg1";
window.open (url,name,'height=800, width=600,left=350, top=200, location=no, scrollbars=no, status=no, toolbar=no, directories=no, menuber=no');
}

function PrImg2() {
	var url ="resources/community/imageUpload/${PrImg2}";
	var name = "PrImg2";
	window.open (url,name,'height=800, width=600,left=350, top=200, location=no, scrollbars=no, status=no, toolbar=no, directories=no, menuber=no');
	} 

function PrImg3() {
	var url ="resources/community/imageUpload/${PrImg3}";
	var name = "PrImg3";
	window.open (url,name,'height=800, width=600,left=350, top=200, location=no, scrollbars=no, status=no, toolbar=no, directories=no, menuber=no');
	}
	
function PrImg4() {
	var url ="resources/img/main/left-banner.png";
	var name = "PrImg4";
	window.open (url,name,'height=100%, width=100%,left=350, top=200, location=no, scrollbars=no, status=no, toolbar=no, directories=no, menuber=no');
	}	
 </script>	
  
  
  
  
  
</head>

<style>
.w3-white{
	background-color: gray!important;
}

</style>


<body>
<div id="wrap">
 <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
      <div class="banner">
        <div class="left-banner">
        <a href="#"><img id="testimg" src="resources/img/main/left-banner.png" ></a>
        </div>
        <div class="center-banner">
        
        
          <img src="resources/community/imageUpload/${MainImg}" />
        </div>
        <div class="right-banner">
          <div class="banner-select">
            <div class="banner-icon">
              <img src="resources/img/main/banner-icon1.png">
            </div>
            <div class="banner-text">
              <a href="branchboardGuidance">교수노조 안내</a>
            </div>
            <div class="banner-next">
              <i class="fas fa-chevron-right"></i>
            </div>
          </div>
          <div class="banner-select"> 
            <div class="banner-icon">
              <img src="resources/img/main/banner-icon3.png">
            </div>
            <div class="banner-text">
              <a href="partner.nhn">조합원 가입신청</a>
            </div>
            <div class="banner-next">
              <i class="fas fa-chevron-right"></i>
            </div>
          </div>
          <div class="banner-select">
            <div class="banner-icon">
              <img src="resources/img/main/banner-icon4.png">
            </div>
            <c:if test="${sessionID != null}">
            <div class="banner-text">
              <a href="agonyWrite">교권상담 신청</a>
            </div>
            </c:if>
            <c:if test="${sessionID == null}">
            <div class="banner-text">
              <a href="#" onclick="javascript:alert('로그인이 필요합니다')">교권상담 신청</a>
            </div>
            </c:if>
            <div class="banner-next">
              <i class="fas fa-chevron-right"></i>
            </div>
          </div>
          <div class="banner-select">
            <div class="banner-icon">
              <img src="resources/img/main/banner-icon2.png">
            </div>
            <c:if test="${sessionID != null}">
            <div class="banner-text">
              <a href="corruptionWrite">대학비리 고발</a>
            </div>
            </c:if>
            <c:if test="${sessionID == null}">
            <div class="banner-text">
              <a href="#" onclick="javascript:alert('로그인이 필요합니다')">대학비리 고발</a>
            </div>
            </c:if>
            <div class="banner-next">
              <i class="fas fa-chevron-right"></i>
            </div>
          </div>
        </div>
      </div>


      <div class="content-board">
        <div class="board">
          <div class="notice">
            <div class="notice-top">
              <div class="notice-title">
                <a href="board_list.nhn?boardName=notice">공지사항</a>
              </div>
              <div class="notice-fake"></div>
              <div class="notice-plus">
                <a href="board_list.nhn?boardName=notice">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="notice-middle">
              <ul>
              	<c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainNotice[n]}">
              				 	<c:if test="${fn:length(mainNotice[n].wr_subject) > 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNotice[n].wr_id }&boardName=notice"><i class="fas fa-angle-right"></i>${fn:substring(mainNotice[n].wr_subject,0,30)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainNotice[n].wr_subject) < 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNotice[n].wr_id }&boardName=notice"><i class="fas fa-angle-right"></i>${mainNotice[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
                </ul>
            </div>
          </div>
          <div class="activity-news">
            <div class="activity-top">
              <div class="activity-title">
                <a href="board_list.nhn?boardName=news">언론보도</a>
              </div>
              <div class="news-title">
                <a href="#"></a>
              </div>
              <div class="activity-fake"></div>
              <div class="activity-plus">
                <a href="board_list.nhn?boardName=news">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="activity-middle">
              <ul>
              <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainPress[n]}">
              				 	<c:if test="${fn:length(mainPress[n].wr_subject) > 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainPress[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${fn:substring(mainPress[n].wr_subject,0,30)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainPress[n].wr_subject) < 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainPress[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${mainPress[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div>
          </div>


          <div class="name-sidewalk">
            <div class="name-top">
              <div class="name-title" onclick="tabclick2()">
                <a>성명서</a>
              </div>
              <div class="sidewalk-title" onclick="tabclick()">
                <a>보도자료</a>
              </div>
              <div class="name-fake"></div>
              <div class="name-plus">
                <a href="board_list.nhn?boardName=statement">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="name-middle">
              <ul>
              <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainStatement[n]}">
              				 	<c:if test="${fn:length(mainStatement[n].wr_subject) > 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNews[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${fn:substring(mainStatement[n].wr_subject,0,30)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainStatement[n].wr_subject) < 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainStatement[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${mainStatement[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div>
            
            
			<div class="name-middle-two" style="display:none">
              <ul>
               <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainReport[n]}">
              				 	<c:if test="${fn:length(mainReport[n].wr_subject) > 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainReport[n].wr_id }&boardName=report"><i class="fas fa-angle-right"></i>${fn:substring(mainReport[n].wr_subject,0,30)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainReport[n].wr_subject) < 30}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainReport[n].wr_id }&boardName=report"><i class="fas fa-angle-right"></i>${mainReport[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div>
          </div>
          
          <div class="photo">
            <div class="photo-title">
              <a href="board_list.nhn?boardName=photo">사진자료</a>
            </div>
                <div class="photo-img">
              	  <a href="board_list.nhn?boardName=photo">
	              	<img src="resources/community/imageUpload/${photoboard[0]}">
	              </a>
            </div>
            <div class="photo-img">
              	  <a href="board_list.nhn?boardName=photo">
              	  <img src="resources/community/imageUpload/${photoboard[1]}">
              	  </a>
            </div>
          </div>
        </div>
        <div class="slide-board">
          <div class="slide-title">
            <div class="slide-text">
              <h3>선전홍보물</h3>
            </div>
            <div class="slide-btn">
              <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle">
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white w3-white" onclick="currentDiv(1,this)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2,this)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3,this)"></span>
              </div>
            </div> 
          </div>
          <div class="slide-img">
           <img class="mySlides" onclick="PrImg1()" src="<c:url value='resources/community/imageUpload/${PrImg1}'/>">
           <img class="mySlides" onclick="PrImg2()" src="<c:url value='resources/community/imageUpload/${PrImg2}'/>">
           <img class="mySlides" onclick="PrImg3()" src="<c:url value='resources/community/imageUpload/${PrImg3}'/>">
          </div>
        </div>
      </div>
      
      
            <div class="content-phone-board">
        <div class="board">
          <div class="notice-phone">
            <div class="notice-top">
              <div class="notice-title">
                <a href="board_list.nhn?boardName=notice">공지사항</a>
              </div>
              <div class="notice-fake"></div>
              <div class="notice-plus">
                <a href="board_list.nhn?boardName=notice">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="notice-middle">
              <ul>
                <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainNotice[n]}">
              				 	<c:if test="${fn:length(mainNotice[n].wr_subject) > 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNotice[n].wr_id }&boardName=notice"><i class="fas fa-angle-right"></i>${fn:substring(mainNotice[n].wr_subject,0,24)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainNotice[n].wr_subject) < 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNotice[n].wr_id }&boardName=notice"><i class="fas fa-angle-right"></i>${mainNotice[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div>
          </div>


          <div class="activity-news-phone">
            <div class="activity-top">
              <div class="activity-title">
                <a href="board_list.nhn?boardName=news">언론보도</a>
              </div>
              <div class="news-title">
              </div>
              <div class="activity-fake"></div>
              <div class="activity-plus">
                <a href="board_list.nhn?boardName=news">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="activity-middle">
              <ul>
                <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainPress[n]}">
              				 	<c:if test="${fn:length(mainPress[n].wr_subject) > 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNews[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${fn:substring(mainPress[n].wr_subject,0,24)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainPress[n].wr_subject) < 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainPress[n].wr_id }&boardName=news"><i class="fas fa-angle-right"></i>${mainPress[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div>
          </div>


          <div class="name-sidewalk-phone">
            <div class="name-top">
              <div class="name-title">
                <a href="board_list.nhn?boardName=statement">성명서</a>
              </div>
              <div class="sidewalk-title">
                <a href="board_list.nhn?boardName=report">보도자료</a>
              </div>
              <div class="name-fake"></div>
              <div class="name-plus">
                <a href="board_list.nhn?boardName=statement">더보기</a>
                <i class="fas fa-plus"></i>
              </div>
            </div>
            <div class="name-middle">
              <ul>
               <c:forEach var="n" begin="0" end="3" step="1">
              			<c:choose>
              				 <c:when test="${!empty mainStatement[n]}">
              				 	<c:if test="${fn:length(mainStatement[n].wr_subject) > 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainNews[n].wr_id }&boardName=statement"><i class="fas fa-angle-right"></i>${fn:substring(mainStatement[n].wr_subject,0,24)}...</a></li>
              		 			</c:if>
              		 			<c:if test="${fn:length(mainStatement[n].wr_subject) < 24}">
              		 				<li><a href="board_cont.nhn?wr_id=${mainStatement[n].wr_id }&boardName=statement"><i class="fas fa-angle-right"></i>${mainStatement[n].wr_subject}</a></li>
              		 			</c:if>
              			 	</c:when>
              			 	<c:otherwise>
              		 			<li><a href="#"><i class="fas fa-angle-right"></i>게시글이 없습니다</a></li>
              			 	</c:otherwise>
              			</c:choose>
              		</c:forEach>
              </ul>
            </div> 
            
            


          <div class="photo-phone">
            <div class="photo-title">
              <a href="board_list.nhn?boardName=photo">사진자료</a>
            </div>
               <div class="photo-img">
              	  <a href="board_list.nhn?boardName=photo">
	              	<img src="resources/community/imageUpload/${photoboard[0]}">
	              </a>
            </div>
            <div class="photo-img">
              	  <a href="board_list.nhn?boardName=photo">
              	  <img src="resources/community/imageUpload/${photoboard[1]}">
              	  </a>
            </div>
          </div>
        </div>
        <div class="slide-board-phone">
          <div class="slide-title">
            <div class="slide-text">
              <h3>선전홍보물</h3>
            </div>
            <div class="slide-btn">
              <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle">
              	<span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4,this)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(5,this)"></span>
                <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(6,this)"></span>
              </div> 
            </div>
          </div>
          <div class="slide-img">
            <a href="#" onclick="PrImg1()"><img class="mySlides" src="<c:url value='resources/community/imageUpload/${PrImg1}'/>"></a>
            <a href="#" onclick="PrImg2()"><img class="mySlides" src="<c:url value='resources/community/imageUpload/${PrImg2}'/>"></a>
            <a href="#" onclick="PrImg3()"><img class="mySlides" src="<c:url value='resources/community/imageUpload/${PrImg3}'/>"></a>
          </div>
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
