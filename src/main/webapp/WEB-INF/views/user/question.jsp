<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<!DOCTYPE html>
<html>


<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>상담 게시판 리스트</title>
  <script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/list.css">
  <link rel="stylesheet" href="resources/css/question.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <script src="resources/js/jquery-3.3.1.min.js" charset="utf-8"></script>
</head>

<script>
	function secretCheck(password){
	var inputString = prompt('비밀번호를 입력하세요', '');
		var mb_id = '${mb_id}'
		
	 	if(password==inputString){
			
		}else if(mb_id=='kpu'){
			
		}else{
			alert("비밀번호가 다릅니다.")
			event.preventDefault();
		} 
	}
	
	$(document).ready(function(){
		$('.question-list-content').hide();
		$('.question-list').click(function(e){
			$(this.nextElementSibling).toggle();
		})
	})
</script>
<body>
<div id="wrap">
  
 <jsp:include page="/resources/header.jsp"></jsp:include>  
  <div id="contents">
    <div class="contents-container">
    
   
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>
   
      
      <div class="list-content">
        <div class="list-title">
          <h2 id="btitle"></h2>
        </div>
        
        <div class='question'>
        	<div class='question-box'>
        		<dl>
        			 <dt class="question-table"><h2> Q&A게시판 </h2></dt>
        			<!--<dd><p> - 인터넷문의 - </p>
        			 인터넷 문의의 경우 Q&A게시판을 이용해서 문의해주시면 됩니다.  </dd>
        			<dd><p> - 전화문의 - </p>
        			 전화문의의 경우 TEL : 02-871-8706 으로 문의해주시면 됩니다. <br>
        			 전화문의의 이용시간 9:00 ~ 18:00   </dd> 
        			 <dd><p> - 방문문의 - </p>
        			 방문문의시 서울시 관악구 봉천로 594-1(2층)에 위치한 사무실로 방문해주시면 됩니다. <br>
        			 방문문의 이용시간 9:00 ~ 18:00   </dd>  -->
        			<dd>
        			<div>
						<div class="questionbox">
							<div class="questionbox-title">&nbsp;궁금하신 사항이 있으시다면 언제든지 문의해주시기 바랍니다. </div>
							<div class="questionbox-sub">&nbsp;전국교수노조 관련 문의 글을 올려주시거나 아래의 방법을 문의해주시면 <br>
							&nbsp;친절하게 안내해드리겠습니다.</div>
							<div class="questionbox-bottom">
							<span>주소 : 서울시 관악구 봉천로 594-1 (2층) </span><br>
							<span>전화 : 02-871-8706 </span><br>
							<span> 팩스 : 02-6007-1415 </span><br>
							<span> E-mail : kpunion@gmail.com</span></div>    
						</div>
        			</div> 
        			</dd>
        		</dl>
        	</div>
        </div>
        
		<div class="question-bottom">
		            <div class="bottom-title">
		              <h2>자주찾는 문의 TOP 5</h2>
		            </div>
		            <div class="bottom-contents">
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">교수노조 법제화 상황은?</p>
		                </div>
		              </div>
		              <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 헌법재판소는 2018년 8월 30일 현 교원조법이 대학 교원의 노동 기본권을 침해하여 헌법불합치 판결을 했습니다.<br> 
		              	&nbsp;&nbsp;그리고 2020년 3월 31일까지 교원노조법을 개정할 것을 명했습니다.</p>
		              	<br>
		              	<p>- 헌법불합치 판결로 교원노조법 개정과 상관없이 자유로운 교수노조 조합원 활동이 보장되었습니다.</p> 
		              	
		              	
		              	
		              	 </div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">교수노조 조합원 가입신청 방법은?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;">  - 개별 조합원으로 가입합니다. / 공개 비공개 가입 모두 가능합니다. </div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">대학 내 지회 설립은?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;"> - 지회 설립은 조합원 10명을 원칙으로 하되 대학별 상황을 고려해야 하므로 사무국에 문의하기 바랍니다.  </div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">교수협의회와의 차이점은?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 단체교섭권이 있으므로 교섭을 할 수 있습니다. 헌재 결정문에 따르면 교수협의회는 단체교섭권이 없습니다.</p>
		              	<br>
		              	<p>- 연대 활동을 할 수 있습니다. 헌재 결정문에 따르면 교수협의회는 다른 대학문제에 관여할 수 없습니다.
		              	 반면 특정 대학 교수노조는 다른 대학 교수노조, 전국 단위 교수노조와 연대하여 해당 대학 문제에 대응할 수 있습니다.</p>
		              	 </div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">전국교수노동조합 사업 및 교권에 대한 설명회와 상담은?</p>
		                </div>
		              </div>
		              <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 전국교수노조 사업, 특히 조직화 사업에 대한 설명회(또는 간담회)를 요청하는 대학이 있는 경우 대학별 설명회를 개최합니다.</p>
		              	<br>
		              	<p>- 개인별 교권상담뿐만 아니라 원하는 대학의 단체 교권 설명회를 개최합니다.<br> 
		              	재임용, 계약임용, 임금, 취업규칙불이익변경, 징계, 직권면직처분 등 다양한 교권 관련 주제로 설명회를 갖습니다. </p>
		              	 </div>
		              </div>
		              
		            </div>
		        </div>
        
        
        
        <div class="list-table">
        <div class='question-listbox'>
        		<dl> 
        			<dt><h2> 문의목록 </h2></dt>
        		</dl> 
        	</div>
          <table>
            <tr>
              <th>번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
              <th>조회</th>
              <th>추천</th>
            </tr>
            <c:forEach items="${boardNoticeHeadList}" var="head">
            <tr>
            	
            	<td style="font-weight:bold;">공지</td>
            	<!-- 로그인한 경우 -->
            	<c:if test="${userlevel.mb_id != null}">
            	<!-- 유저권한이 있는경우 -->
            		<c:if test="${boardlevel.bo_read_level <= userlevel.mb_level}">
            		<td style="font-weight:bold;"><a href="board_cont.nhn?wr_id=${head.wr_id}&boardName=${boardName}">${head.wr_subject}</a></td>
            		</c:if>
            	<!-- 유저권한이 업는경우 -->	
            		<c:if test="${boardlevel.bo_read_level > userlevel.mb_level}">
            		<td style="font-weight:bold;"><a href="#"onclick="javascript:alert('권한이 필요합니다')">${head.wr_subject}</a></td>
            		</c:if>
            	</c:if>
            	
            	
            	<c:if test="${userlevel.mb_id == null}">
            		<c:if test="${boardlevel.bo_read_level == 0}">
            			<td style="font-weight:bold;"><a href="board_cont.nhn?wr_id=${head.wr_id}&boardName=${boardName}">${head.wr_subject}</a></td>
            		</c:if>
            		<c:if test="${boardlevel.bo_read_level != 0}">
            			<td style="font-weight:bold;"><a href="#"onclick="javascript:alert('로그인이 필요합니다')">${head.wr_subject}</a></td>
            		</c:if>
            	</c:if>
            	<td>${head.mb_id}</td>
            	<td>${head.wr_datetime.substring(0,10)}</td>
            	<td>${head.wr_hit}</td>
        		<td>${head.wr_good }</td>
            </tr>
            </c:forEach>  
                <c:forEach items="${board_noticelist}" var="notice" varStatus="status" >
                	<c:set var="replyEnd" value="${notice.wr_reply } "></c:set>
                	<c:set var="passwordleng" value="${notice.wr_password } "></c:set>
        	<tr>
        		<td>${(totalcount - status.index) - ( (page - 1)  *  countlist ) } </td>
     			<td>
        		<c:forEach var="nbsp" begin="2" end="${fn:length(replyEnd) }"> 
        					&nbsp;&nbsp;
                </c:forEach>
							
        						

							<fmt:parseDate value="${notice.wr_datetime}" var="strPlanDate" pattern="yyyy-MM-dd"/>
							<fmt:parseNumber value="${strPlanDate.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
							<c:set var="now" value="<%=new java.util.Date() %>"/>
							<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="endDate"></fmt:parseNumber>
							
                			<c:if test="${fn:length(replyEnd) > 1 }">
								<img src="resources/img/reply.gif">
							</c:if>
							<!-- 권한설정추가 함. -->
							<!-- 로그인 정보가 있으면  -->
							<c:if test="${userlevel.mb_id != null}">
								<!-- 유저에게 게시판 읽기 권한이 있는 경우 -->
								<c:if test="${boardlevel.bo_read_level <= userlevel.mb_level}">
							<c:choose>   
								<c:when test="${'secret' eq notice.wr_option}">
				                 <a href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}" onclick="secretCheck(${notice.wr_password})">비밀글입니다. <img src="resources/img/icon_secret.gif"></a>

				               </c:when>
				               <c:otherwise>
				                <a 
				                  	href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}"> 
				                  	<c:if test="${fn:length(notice.wr_subject) < 35}"> ${notice.wr_subject} </c:if>    <c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if> 
				                    <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if>
				                    <c:if test="${(endDate-strDate) < 2 }">  <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%>
									<c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
								</a>

				               </c:otherwise>
				            </c:choose>
				            </c:if>
				            <!-- 게시판에 대한 유저의 권한이 없는경우 -->
				            <c:if test="${boardlevel.bo_read_level > userlevel.mb_level}">
							<c:choose>   
								<c:when test="${'secret' eq notice.wr_option}">
				                 <a href="#"onclick="javascript:alert('권한이 필요합니다')">비밀글입니다. <img src="resources/img/icon_secret.gif"></a>
				               </c:when>
				               <c:otherwise>
				                  <a href="#"onclick="javascript:alert('권한이 필요합니다')">${notice.wr_subject} <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if> <c:if test="${(endDate-strDate < 1 )}"> <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%><c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if>  </a>
				               </c:otherwise>
				            </c:choose>
				            </c:if>
				            
				            </c:if>
				            
				            <!-- 유저의 정보가 없는경우(비회원) -->
				            <c:if test="${userlevel.mb_id == null}">
					            <c:if test="${boardlevel.bo_read_level != 0}">
								<c:choose>   
									<c:when test="${'secret' eq notice.wr_option }">
					                 <a href="#"onclick="javascript:alert('로그인이 필요합니다')">비밀글입니다. <img src="resources/img/icon_secret.gif"></a>
					               </c:when>
					               <c:otherwise>
					                  <a href="#"onclick="javascript:alert('로그인이 필요합니다')"> <c:if test="${fn:length(notice.wr_subject) < 35}"> ${notice.wr_subject} </c:if>    <c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if> 
					                  <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if> <c:if test="${(endDate-strDate < 1 )}"> <img src="resources/img/new.png">  </c:if> 
										<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if> --%> <c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if>  </a>
					               </c:otherwise>
					            </c:choose>					            
				            	</c:if>
				            	<c:if test="${boardlevel.bo_read_level == 0}">
								<c:choose>   
								<c:when test="${!empty notice.wr_password }">
				                         <a 
				                  	href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}"> 
				                  	<c:if test="${fn:length(notice.wr_subject) < 35}"> ${notice.wr_subject} </c:if>    <c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if>  
				                    <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if>
				                    <c:if test="${(endDate-strDate) < 2 }">  <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%>
									<c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
								</a>
				               </c:when>
				               <c:otherwise>
				                  <a href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}">${notice.wr_subject} <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if> <c:if test="${(endDate-strDate < 1 )}"> <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if> --%> <c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if>  </a>
				               </c:otherwise>
				            </c:choose>
					            </c:if>			            	
				            	
				            	
				            </c:if>
        		</td>
        		<td>${notice.wr_name} </td>
        		<td>${notice.wr_datetime.substring(0,10)}</td>
        		<td>${notice.wr_hit }</td>
        		<td>${notice.wr_good }</td>
        	</tr>
        </c:forEach>
          </table>
        </div>
        <div class="list-link">
          <div class="link-one">
          <%--   <p>Total : ${totalcount }</p> --%>
          </div>
          <div class="link-two">
         <ul>
	         <li>
		        <c:if test="${page >1 }">
		      		<a href="board_list.nhn?page=${page-1}&boardName=${boardName}">
		      		<i class="fas fa-angle-left"></i>
		      		</a>
		        </c:if>
	        	<c:forEach var="a" begin="${startpage}" end="${endPage}" step="1">
	        	<c:if test="${a==page}">
	        		<a style="border: 1px solid #0195ea; font-weight: bold;   color: #0195ea;" href="board_list.nhn?page=${a}&boardName=${boardName}">${a}</a>
	        	</c:if>
	        	<c:if test="${a!=page}">
	        		<a href="board_list.nhn?page=${a}&boardName=${boardName}">${a}</a>
	        		</c:if>
	       		 </c:forEach>
	        	<c:if test="${page < endPage }">
	      			<a href="board_list.nhn?page=${page+1}&boardName=${boardName}">
	      			<i class="fas fa-angle-right"></i>
	      			</a>
	       		 </c:if>
	        </li>
        	</ul>
          </div>
   
							
          <div class="link-three" style="margin-left: 95px;">
      	<c:if test="${userlevel.mb_id != null}">
          	<c:if test="${boardlevel.bo_write_level <= userlevel.mb_level}">
          	  <button onclick = "location.href='board_write.nhn?boardName=${boardName}'">글쓰기</button>
          	</c:if>
          	</c:if>
          	<c:if test="${userlevel.mb_id == null}">
	          	<c:if test="${boardlevel.bo_write_level == '0'}">
	          	  <button onclick = "location.href='board_write.nhn?boardName=${boardName}'">글쓰기</button>
	          	</c:if>
	          	<c:if test="${boardlevel.bo_write_level != '0'}">
	          	</c:if>
			</c:if>
          </div>
        </div>
           <div class="list-search">
          <form action="board_list.nhn">
            <div class="list-search-select">
              <select name="searchOption">
                <option value="titlecontent">제목+내용</option>
                <option value="title">제목</option>
                <option value="content">내용</option>
                <option value="writer">작성자</option>
              </select>
            </div>
            <div class="list-search-bar">
              <input type="search" name="keyword" size="35">
              <input type="hidden" name="boardName" value="${boardName }">
            </div>
            <div class="list-search-btn">
              <input type="submit" name="" value="검색">
            </div>
          </form>
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
		