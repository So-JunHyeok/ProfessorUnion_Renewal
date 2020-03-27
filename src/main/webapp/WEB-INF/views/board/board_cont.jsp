<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
  <script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/view.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<script>



		function commentReple(e){
			var parent = e.parentNode;
			var parent2 = parent.parentNode;
			console.log(parent2);
		 	var wr_id = e.value
			var wr_parent = $("#wr_parent").val();
		 	var wr_comment_reply = $("#wr_comment_reply"+wr_id).val();
			var boardName = $("#boardName").val();
		 	
			var commentform = document.getElementById('commentform')
			commentform.style.display = "none";
		 	
		 	
		 	if($(".commentform").length){
		 		$('.commentform').css("display","none")		 		
		 	}
		
			var str = "";
			str += "<form action='board_notice_comment' method='post' class='commentform'>";
			str += "<textarea name='wr_content' rows='8' cols='120' style='border-radius: 10px; width:100%;'></textarea>";
			str += "<input type='submit' name='button' style='border-radius:10px; width:100px; height:80px;margin-left:20px; background:white; margin-top:20px;' value='댓글입력'/>";
			str += "<input type='hidden' name='wr_id' value="+wr_id+">";
			str += "<input type='hidden' name='wr_parent' value="+wr_parent+">";
			str += "<input type='hidden' name='wr_comment_reply' value="+wr_comment_reply+">";
			str += "<input type='hidden' name='boardName' value="+boardName+">";
			str += "<input type='hidden' name='wr_reply' value='${board.wr_reply }'>";
			str += "</form>";
			 $(parent).append(str) 
			 }
		

</script>
<body>
  <div id="wrap">
    
	 <jsp:include page="/resources/header.jsp"></jsp:include>

    <div id="contents">
      <div class="contents-container">
       
       
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>

        <div class="professor-contents">
          <div class="professor-top">
            <h2 id="btitle"></h2>
          </div>
          <div class="professor-center">
            <div class="title">
              <div class="title-1">
                <p>${board.wr_subject }</p>
              </div>
              <div class="title-2">
                <span class="span-1"><a href="board_list.nhn?boardName=${boardName }">목록</a></span>
                <span class="span-1"><a href="replyBoardWrite.nhn?boardName=${boardName }&wr_id=${board.wr_id}&wr_parent=${board.wr_parent}">답변</a></span>
              </div>
            </div>
            <div class="view-content">
              <div class="view-content-top">
                <div class="view-content-day">
                  <span>작성일 :</span>
                  <span>${board.wr_datetime }</span>
                </div>
                <div class="view-content-writer">
                  <span>작성자 :</span>
                  <span>${board.mb_id }</span>
                </div>
                <div class="view-content-hit">
                  <span>조회 :</span>
                  <span>${board.wr_hit }</span>
                </div>
                <div class="view-content-like">
                  <span>추천 :</span>
                  <span>${board.wr_good }</span>
                </div>  
              </div>
              <div class="view-content-file">
                  <c:if test="${!empty files}"> 
                <div class="view-content-filelist">
                  <c:forEach var="f" items="${files}">
                  <ul>
                    <li><span class="span-7"><i class="fas fa-arrow-alt-circle-down"></i><a type="mime-type" href="downloadaction?filename=${f.bf_file}&wr_id=${wr_id}&boardName=${boardName}">${f.bf_source}</a></span></li>
                  </ul>
                    </c:forEach>
                </div>
                    </c:if>
              </div>
             <c:if test="${!empty board.wr_link1}"> 
              <div class="view-content-link">
                <div class="view-content-linklist">
                  <ul>
                    <li><span class="span-6"><i class="fas fa-link"></i><a href="${board.wr_link1 }">${board.wr_link1 }</a></span></li>
                  </ul>
                  <c:if test="${!empty board.wr_link2}"> 
                  <ul>
                    <li><span class="span-6"><i class="fas fa-link"></i><a href="${board.wr_link2 }">${board.wr_link2 }</a></span></li>
                  </ul>
             	</c:if> 
                </div>
              </div>
             </c:if>
             
                
          
 
              <div class="view-content-text">
			${board.wr_content}
				<%-- <c:if test="${'photo' eq boardName }">--%>
                  <c:forEach var="f" items="${files}">
					<img class="photocont" alt="" src="resources/community/imageUpload/${f.bf_file}">
					</c:forEach>
				<%-- </c:if>--%>
              </div>
              <div class="view-content-bottom">
                <div class="view-content-bottom-link">
                  
                
                  <%-- <span class="span-1"><a href="boardScrap.nhn?wr_id=${board.wr_id}&boardName=${boardName}&wr_subject=${board.wr_subject}">스크랩 </a></span> --%>
                  <form action="boardScrap.nhn" method="post" name="myForm">
                  <c:if test="${'kpu' eq mb_id}">
                  <span class="span-1"><a href="#">복사</a></span>
                  <span class="span-1"><a href="#">이동</a></span>
                  </c:if>
                  <c:if test="${'kpu' eq mb_id || mb_id eq board.mb_id}">
                  <span class="span-1"><a href="board_modify.nhn?wr_id=${board.wr_id}&boardName=${boardName }">수정</a></span>
                  <span class="span-1"><a href="board_delete.nhn?wr_id=${board.wr_id}&boardName=${boardName }" onclick="return confirm('한번 삭제 된 게시물 복구 할 방법이 없습니다.\n\n정말 삭제 하시겠습니까?');">삭제</a></span>
                  
                  
                  </c:if>
                  	<input type="hidden" name="wr_id" value="${board.wr_id}">
                  	<input type="hidden" name="boardName" value="${boardName}">
                 	<input type="hidden" name="wr_subject" value="${board.wr_subject}">
                  	<span class="span-1"><a href="#" onclick="javascript:document.myForm.submit();">스크랩 </a></span>
                  	<span class="span-1"><a href="board_list.nhn?boardName=${boardName }">목록</a></span>
                  	<span class="span-1"><a href="replyBoardWrite.nhn?boardName=${boardName }&wr_id=${board.wr_id}&wr_parent=${board.wr_parent}">답변</a></span>
                  	
                  </form>
                  
                  
                </div>
                <div class="view-content-bottom-like">
                  <div class="view-content-bottom-up">
                  	<c:if test="${!empty mb_id }">
                    <a href="board_like_nhn?wr_id=${board.wr_id}&boardName=${boardName}"><i class="far fa-thumbs-up"></i></a><a href="board_like_nhn?wr_id=${board.wr_id}&boardName=${boardName }">추천</a>
                    </c:if>
                  </div>

                </div>
              </div>
              <div class="view-content-commentlist">
                <div class="commentbox">     
                <c:forEach var="c" items="${comentlist }">
					<c:set var="replyEnd" value="${c.wr_comment_reply } "></c:set>
                
                  <div class="commentboxlist"> 
                 <ul>
                      <li><span class="span-2">
                       <c:forEach var="nbsp" begin="1" end="${fn:length(replyEnd) }">
							&nbsp;&nbsp;&nbsp;&nbsp;
                      </c:forEach> 
                      		닉네임 (${c.mb_id })
                      		</span></li>
                    </ul>
                    <ul>  
                      <li><span 
                      class="span-4">
                       <c:forEach var="nbsp" begin="1" end="${fn:length(replyEnd) }">
							&nbsp;&nbsp;&nbsp;&nbsp;
                      </c:forEach> 
                      ${c.wr_content }
                      </span></li>
                      
                    </ul> 
                    <ul>
                      <li><span class="span-5">
                      ${c.wr_datetime}
                      </span></li>
                    </ul>
                    <div class="comment-reply">
                    	<c:if test="${!empty mb_id }">
                      <button type="button" onclick="commentReple(this)" value="${c.wr_id }" name="button" style="border-radius:10px; width:100px; height:35px;background:white;">댓글입력</button>
                      </c:if>
                    </div>
                  </div>
                  </c:forEach>
                  

                </div>
              </div>
              
              <c:if test="${!empty mb_id }">
			<form action="board_notice_comment" method="post" id="commentform">
              <div class="view-content-comment">
                <textarea name="wr_content" rows="8" cols="120" style="border-radius: 10px; width:90%;"></textarea>
                <input type="submit" name="button" style="border-radius:10px; width:100px; height:80px;margin-left:20px; background:white; margin-top:20px;" value="댓글입력">
                <input type="hidden" id="wr_id" name="wr_id" value="${board.wr_id}">
				<input type="hidden" name="wr_parent" id="wr_parent" value="${board.wr_parent}">
				<input type="hidden" name="is_wr_comment_reply"  value="reply">
				<input type="hidden" name="wr_reply"  value="${board.wr_reply }">
				<input type="hidden" id="boardName" name="boardName" value="${boardName }">
              </div>
              </form>
              </c:if>
            </div>
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
