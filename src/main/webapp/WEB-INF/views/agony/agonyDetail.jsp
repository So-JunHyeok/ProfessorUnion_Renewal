<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

<title>전국교수노동조합</title>
<link rel="stylesheet" href="resources/css/agonyDetail.css">
<script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
</head>
<script type="text/javascript">
	function goModify() {
		var form = document.getElementById("#modifyForm");
		form.submit();
	}
	function goDelete() {
		var form = document.getElementById("#deleteForm");
		form.submit();
	}
	function goList() {
		var form = document.getElementById("#listForm");
		form.submit();
	}
</script>
<body>
<div id="wrap">
  <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
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
              <a href="partner.nhn">조합원 가입신청</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="agonyWrite">교권상담 신청</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="corruptionWrite">대학비리 고발</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=free">자유게시판</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="board_list.nhn?boardName=question">Q&A게시판</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
          <div class="side-professor-kinds">
            <div class="side-text">
              <a href="question_list?boardName=myquestion">내 문의함</a>
            </div>
            <div class="side-icon">
              <i class="fas fa-angle-right"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="detail-content">
        <div class="detail-title">
          <h2>교 권 상 담</h2>
        </div>
        <div class="detail-table">
          <table>
            <tr>
              <th>문의유형</th>
              <td>${detail.authority}</td>
            </tr>
            <tr>
              <th>소속대학</th>
              <td>${detail.auniversity}</td>
            </tr>
            <tr>
              <th>제목</th>
              <td>${detail.atitle}</td>
            </tr>
            <tr>
              <th>이름</th>
              <td>${detail.aname}</td>
            </tr>
            <tr>
              <th>아이디</th>
              <td>${detail.aid}</td>
            </tr>
            <tr>
              <th>작성일자</th>
              <td>${detail.adate}</td>
            </tr>
            <tr>
              <th colspan="2">내용</th>
            </tr>
            
 <%
     //치환 변수 선언합니다.
      pageContext.setAttribute("crcn", "\r\n"); //Space, Enter
      pageContext.setAttribute("br", "<br/>"); //br 태그
%>        
            <tr>
              <td colspan="2">${fn:replace(detail.acontent,crcn, br)}</td>
            </tr>
            <tr>
              <td colspan="2">
                <form id="deleteForm" action="agonyDelete">
                <c:if test="${sessionID eq detail.aid}">
                  <input type="hidden" name="anum" value="${detail.anum}">
                  <button type="submit" onclick="goDelete">삭제</button>
                  <button type="button" onclick="location.href='agonyModify?anum=${detail.anum}'">수정</button>
                </c:if>
                  <button type="button" onclick="location.href='javascript:history.back()'">목록</button>
                </form>
              </td>
            </tr>
          </table>
        </div>

        <div class="detail-comment">
            <c:forEach items="${comment}" var="c">
          	<ul>
          	  <li>${c.cid}</li>
          		<li>${c.ccontent}</li>
          		<li>${c.cdate}</li>
          		<li>
              	<c:if test="${sessionID eq c.cid}">
            		<button type="button" onclick="location.href='commentDelete?anum=${c.anum}&cnum=${c.cnum}'">삭제</button>
            		</c:if>
          		</li>
          	</ul>
          	</c:forEach>
        </div>
        <div class="detail-comment-write">
          <form action="agonyComment" method="post">
            <div class="detail-comment-textarea">
              <input type="hidden" name="anum" value="${detail.anum}">
              <textarea rows="8" cols="100" name="ccontent" required></textarea>
            </div>
            <div class="detail-comment-btn">
              <input type="submit" value="작성">
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