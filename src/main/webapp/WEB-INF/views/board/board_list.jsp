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
  <script src="https://cdn.jsdelivr.net/npm/matchmedia-polyfill/"></script>
  <script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/list.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
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
  		<c:if test="${'precedent' eq boardName || 'precedent_Wage' eq boardName || 'precedent_Punishment' eq boardName}">
        <div class="submanu">
			<button class="submaunbt" id="reappointment" onclick="location.href='board_list.nhn?boardName=precedent'">재임용판례</button>
			<button class="submaunbt" id="Wage" onclick="location.href='board_list.nhn?boardName=precedent_Wage'">임금판례</button>
			<button class="submaunbt" id="Punishment" onclick="location.href='board_list.nhn?boardName=precedent_Punishment'">징계판례</button>
        </div>
        </c:if>
          		<c:if test="${'policy' eq boardName || 'policy_debate' eq boardName}">
        <div class="submanu">
			<button class="submaunbt" id="reappointment" onclick="location.href='board_list.nhn?boardName=policy'">법안자료</button>
			<button class="submaunbt" id="debate" onclick="location.href='board_list.nhn?boardName=policy_debate'">토론회자료</button>
        </div>
        </c:if>
        <div class="list-table">
          <table>
            <tr>
              <th class="test">번호</th>
              <th>제목</th>
              <th>작성자</th>
              <th>날짜</th>
              <th>조회</th>
              <th>추천</th>
            </tr>
            <c:forEach items="${boardNoticeHeadList}" var="head" varStatus="status">
            <tr>
            	
            	<td style="font-weight:bold;">공지</td>
            	<!-- 로그인한 경우 -->
            	<c:if test="${userlevel.mb_id != null}">
            	<!-- 유저권한이 있는경우 -->
            		<c:if test="${boardlevel.bo_read_level <= userlevel.mb_level}">
            		<td style="font-weight:bold;"><a href="board_cont.nhn?wr_id=${head.wr_id}&boardName=${boardName}">
            		<c:if test="${fn:length(head.wr_subject) <= 35}">${head.wr_subject}</c:if>
            		<c:if test="${fn:length(head.wr_subject) > 35}">${fn:substring(head.wr_subject,0,35)}...</c:if>
            		<c:if test="${!empty fileCheck_head[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
            		<c:if test="${!empty head.wr_link1 or !empty head.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
            		</a></td>
            		</c:if>
            	<!-- 유저권한이 업는경우 -->	
            		<c:if test="${boardlevel.bo_read_level > userlevel.mb_level}">
            		<td style="font-weight:bold;"><a href="#"onclick="javascript:alert('권한이 필요합니다')">
            			<c:if test="${fn:length(head.wr_subject) <= 35}">${head.wr_subject}</c:if>
            			<c:if test="${fn:length(head.wr_subject) > 35}">${fn:substring(head.wr_subject,0,35)}...</c:if>
            			<c:if test="${!empty fileCheck_head[status.index]}"> <img src="resources/img/icon_file.gif"> </c:if> 
            			<c:if test="${!empty head.wr_link1 or !empty head.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
            		
            		</a></td>
            		</c:if>
            	</c:if>
            	
            	
            	<c:if test="${userlevel.mb_id == null}">
            		<c:if test="${boardlevel.bo_read_level == 0}">
            			<td style="font-weight:bold;"><a href="board_cont.nhn?wr_id=${head.wr_id}&boardName=${boardName}">
            			
            			<c:if test="${fn:length(head.wr_subject) <= 35}">${head.wr_subject}</c:if>
            			<c:if test="${fn:length(head.wr_subject) > 35}">${fn:substring(head.wr_subject,0,35)}...</c:if>
            			<c:if test="${!empty fileCheck_head[status.index]}"> <img src="resources/img/icon_file.gif"> </c:if>
            			<c:if test="${!empty head.wr_link1 or !empty head.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if> 
            			</a>
            			</td>
            		</c:if>
            		<c:if test="${boardlevel.bo_read_level != 0}">
            			<td style="font-weight:bold;"><a href="#"onclick="javascript:alert('로그인이 필요합니다')">
            			
            			<c:if test="${fn:length(head.wr_subject) <= 35}">${head.wr_subject}</c:if>
            			<c:if test="${fn:length(head.wr_subject) > 35}">${fn:substring(head.wr_subject,0,35)}...</c:if>
            			<c:if test="${!empty fileCheck_head[status.index]}"> <img src="resources/img/icon_file.gif"> </c:if>
            			<c:if test="${!empty head.wr_link1 or !empty head.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
            			
            			</a></td>
            		</c:if>
            	</c:if>
            	<td>${head.wr_name}</td>
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
				                <a class="b_subject"
				                  	href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}"> 
				                   	<c:if test="${fn:length(notice.wr_subject) <= 35}"> ${notice.wr_subject} </c:if>
				                   	<c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if> 
				                    <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if>
				                    <c:if test="${(endDate-strDate) < 2 }">  <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%>
									<c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
									<c:if test="${!empty notice.wr_link1 or !empty notice.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
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
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%>
									<c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if>
									<c:if test="${!empty notice.wr_link1 or !empty notice.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
									  </a>
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
					                  <a href="#"onclick="javascript:alert('로그인이 필요합니다')"> <c:if test="${fn:length(notice.wr_subject) <= 35}"> ${notice.wr_subject} </c:if>    <c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if> 
					                  <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if> <c:if test="${(endDate-strDate < 1 )}"> <img src="resources/img/new.png">  </c:if> 
										<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if> --%>
										 <c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
										<c:if test="${!empty notice.wr_link1 or !empty notice.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
										</a>
					               </c:otherwise>
					            </c:choose>					            
				            	</c:if>
				            	<c:if test="${boardlevel.bo_read_level == 0}">
								<c:choose>   
								<c:when test="${!empty notice.wr_password }">
				                 <a  class="b_subject"
				                  	href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}"> 
				                  	<c:if test="${fn:length(notice.wr_subject) <= 35}"> ${notice.wr_subject} </c:if>    <c:if test="${fn:length(notice.wr_subject) > 35}"> ${fn:substring(notice.wr_subject,0,35)}... </c:if>  
				                    <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if>
				                    <c:if test="${(endDate-strDate) < 2 }">  <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if>  --%>
									<c:if test="${!empty fileCheck[status.index]}"> <img src="resources/img/icon_file.gif"> </c:if> 
									<c:if test="${!empty notice.wr_link1 or !empty notice.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
								</a>
				               </c:when>
				               <c:otherwise>
				                  <a href="board_cont.nhn?wr_id=${notice.wr_id}&boardName=${boardName}">${notice.wr_subject} <c:if test="${notice.wr_comment > 0 }"> <span style="color: #ff2222d9">(${notice.wr_comment})</span> </c:if> <c:if test="${(endDate-strDate < 1 )}"> <img src="resources/img/new.png">  </c:if> 
									<%-- <c:if test="${notice.wr_hit >= 100 }"> <img src="resources/img/hot.png"> </c:if> --%> <c:if test="${!empty fileCheck[status.index] }"> <img src="resources/img/icon_file.gif"> </c:if> 
									<c:if test="${!empty notice.wr_link1 or !empty notice.wr_link2}"> <img src="resources/img/icon_link.JPG"> </c:if>
									 </a>
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
		      		<a href="board_list.nhn?page=1&boardName=${boardName}">
		      		<i class="fas fa-angle-double-left"></i>
		      		</a>
		        </c:if>
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
	       		 <c:if test="${page < endPage }">
	      			<a href="board_list.nhn?page=${totalpage}&boardName=${boardName}">
	      			<i class="fas fa-angle-double-right"></i>
	      			</a>
	       		 </c:if>
	        </li>
        	</ul>
          </div>
   
							
          <div class="link-three">
      	<c:if test="${userlevel.mb_id != null}">
          	<c:if test="${boardlevel.bo_write_level <= userlevel.mb_level}">
          	  <button onclick = "location.href='board_write.nhn?boardName=${boardName}'">글쓰기</button>
          	</c:if>
          	</c:if>
          	<c:if test="${userlevel.mb_id == null}">
	          	<c:if test="${boardlevel.bo_write_level == '1'}">
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
              <input type="hidden" name="boardName" value="${boardName}">
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
		