<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
    $(document).ready(function(){
		var boardName = '${boardName}';
		
		$("#"+boardName).css("color","#23539b"); 
		$("#"+boardName).parent().parent().css("color","#23539b")
		$("#"+boardName).parent().parent().css("border-bottom","2px solid #23539b")
	})
	
	window.addEventListener('DOMContentLoaded', function(){
		var boardName = '${boardName}';
		if(boardName=='notice'){
			$("#btitle").text("공지사항")
		}else if(boardName=='news'){
			$("#btitle").text("소식")
		}else if(boardName=='statement'){
			$("#btitle").text("성명서")
		}else if(boardName=='report'){
			$("#btitle").text("보도자료")
		}else if(boardName=='precedent'){
			$("#btitle").text("재임용판례자료")
		}else if(boardName=='precedent_Wage'){
			$("#btitle").text("임금판례자료")
		}else if(boardName=='precedent_Punishment'){
			$("#btitle").text("징계판례자료")
		}else if(boardName=='photo'){
			$("#btitle").text("사진자료실")
		}else if(boardName=='policy'){
			$("#btitle").text("법안자료")
		}else if(boardName=='policy_debate'){
			$("#btitle").text("토론자료")
		}else if(boardName=='free'){
			$("#btitle").text("자유게시판")
		}else if(boardName=='news'){
			$("#btitle").text("소식")
		}else if(boardName=='myquestion') {
			$("#btitle").text("내 문의함")
		}else if(boardName=='press') {
			$("#btitle").text("언론보도")
		}
		
		$("#"+boardName).css("color","#23539b"); 
		$("#"+boardName).parent().parent().css("color","#23539b")
		$("#"+boardName).parent().parent().css("border-bottom","2px solid #23539b")
	})
		
    </script>
 <c:if test="${'notice' eq boardName||'news' eq boardName ||'press' eq boardName}">
      <div class="side-professor">
        <div class="side-professor-img">
          <a href="main.nhn"> 
            <img src="resources/img/main/123.png">
          </a>
        </div>
        <div class="side-professor-title">
          <h2>공지사항/언론보도</h2>
        </div>
        <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=notice"  class="side-menu" id="notice">공지사항</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
<!--           <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=news" class="side-menu" id="news">소식</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div> -->
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=press" class="side-menu" id="press">언론보도</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      
      <c:if test="${'statement' eq boardName||'report' eq boardName}">
      <div class="side-professor">
        <div class="side-professor-img">
          <a href="main.nhn"> 
            <img src="resources/img/main/123.png">
          </a>
        </div>
        <div class="side-professor-title">
          <h2>성명서/보도자료</h2>
        </div>
        <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=statement"  class="side-menu" id="statement">성명서</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=report" class="side-menu" id="report">보도자료</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>

          
        </div>
      </div>
      </c:if>
      
      <c:if test="${'precedent' eq boardName|| 'precedent_Wage' eq boardName|| 'precedent_Punishment' eq boardName||'photo' eq boardName ||'policy' eq boardName ||'policy_debate' eq boardName }">
      <div class="side-professor">
        <div class="side-professor-img">
          <a href="main.nhn"> 
            <img src="resources/img/main/123.png">
          </a>
        </div>
        <div class="side-professor-title">
          <h2>자료실</h2>
        </div>
        <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=precedent"  class="side-menu" id="precedent1">판례자료실</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
			          <div class="side-professor-kinds">
			            <div class="side-text">
			              <a href="board_list.nhn?boardName=precedent"  class="side-menu" id="precedent">&nbsp;-재임용판례자료</a>
			            </div>
			            <div class="side-icon">
			              <i class="fas fa-angle-right"></i>
			            </div>
			          </div>
			          <div class="side-professor-kinds">
			            <div class="side-text">
			              <a href="board_list.nhn?boardName=precedent_Wage"  class="side-menu" id="precedent_Wage">&nbsp;-임금판례자료</a>
			            </div>
			            <div class="side-icon">
			              <i class="fas fa-angle-right"></i>
			            </div>
			          </div>
			          <div class="side-professor-kinds">
			            <div class="side-text">
			              <a href="board_list.nhn?boardName=precedent_Punishment"  class="side-menu" id="precedent_Punishment">&nbsp;-징계판례자료</a>
			            </div>
			            <div class="side-icon">
			              <i class="fas fa-angle-right"></i>
			            </div>
			          </div>

          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=policy" class="side-menu" id="policy1">정책자료실</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
	          <div class="side-professor-kinds">
	            <div class="side-text">
	              <a href="board_list.nhn?boardName=policy" class="side-menu" id="policy">&nbsp;-법안자료</a>
	            </div>
	            <div class="side-icon">
	              <i class="fas fa-angle-right"></i>
	            </div>
	          </div>
	          <div class="side-professor-kinds">
	            <div class="side-text">
	              <a href="board_list.nhn?boardName=policy_debate" class="side-menu" id="policy_debate">&nbsp;-토론자료</a>
	            </div>
	            <div class="side-icon">
	              <i class="fas fa-angle-right"></i>
	            </div>
	          </div>
	          
	      <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=photo" class="side-menu" id="photo">사진자료실</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div> 
        </div>
      </div>
      </c:if>
      
         <c:if test="${'free' eq boardName||'question' eq boardName ||'agony' eq boardName ||'partner' eq boardName ||'corruption' eq boardName || 'myquestion' eq boardName }">
      <div class="side-professor">
        <div class="side-professor-img">
          <a href="main.nhn"> 
            <img src="resources/img/main/123.png">
          </a>
        </div>
        <div class="side-professor-title">
          <h2>참여마당</h2>
        </div>
        <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
				<c:if test="${sessionID == null}">
              <a href="#" onclick="javascript:alert('로그인이 필요합니다')"  class="side-menu" id="">조합원신청</a>
              	</c:if>
              	<c:if test="${sessionID != null}">
              <a href="partner.nhn"  class="side-menu" id="partner">조합원신청</a>
              	</c:if>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
            	<c:if test="${sessionID == null}">
                <a href="#" onclick="javascript:alert('로그인이 필요합니다')" class="side-menu" id="">상담신청</a>
              </c:if>
              	<c:if test="${sessionID != null}">
              <a href="agonyWrite" class="side-menu" id="agony">상담신청</a>
              	</c:if>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
            	<c:if test="${sessionID == null}">
             	   <a href="#" onclick="javascript:alert('로그인이 필요합니다')" class="side-menu" id="">대학비리고발</a>
              </c:if>
              
              	<c:if test="${sessionID != null}">
             	   <a href="corruptionWrite" class="side-menu" id="corruption">대학비리고발</a>
              </c:if>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=free" class="side-menu" id="free">자유게시판</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=question" class="side-menu" id="question">Q&A게시판</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="question_list?boardName=myquestion" class="side-menu" id="myquestion">내 문의함</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
        </div>
      </div>
      </c:if>
      
      <c:if test="${'branchboardwrite' eq boardName || 'branchboardlist' eq boardName || 'guidance' eq boardName || 'law' eq boardName||'declaration' eq boardName ||'propel' eq boardName ||'map' eq boardName ||'executives' eq boardName ||'group' eq boardName ||'symbol' eq boardName ||'branch' eq boardName ||'guidance' eq boardName }">
       <div class="side-professor">
        <div class="side-professor-img">
          <a href="main.nhn"> 
            <img src="resources/img/main/123.png">
          </a>
        </div>
        <div class="side-professor-title">
          <h2>교수노조 소개</h2>
        </div>
        <div class="side-professor-text">
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="declaration.nhn?boardName=declaration" id="declaration">출범선언</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="propel.nhn?boardName=propel" id="propel">추진배경/발자취</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="law.nhn?boardName=law" id="law">강령규약</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="branchboardGuidance" id="guidance">교수노조 안내</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="group.nhn?boardName=group" id="group">조직구성</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="executives.nhn?boardName=executives" id="executives">임원소개</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="symbol.nhn?boardName=symbol" id="symbol">상징마크</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="map.nhn?boardName=map" id="map">오시는길</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
        </div>
      </div>
          </c:if>
 
