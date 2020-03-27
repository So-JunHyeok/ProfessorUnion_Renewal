<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상담 게시글 수정</title>
</head>
<script type="text/javascript">
	function goList() {
		var form = document.getElementById("#listForm");
		form.submit;
	}
</script>
<body>
<div id="wrap">
  <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
      <div class="side-professor">
        <div class="side-professor-img">
          <a href="#">
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
          <h2>대학비리고발</h2>
        </div>
        <div class="detail-table">
          <form action="corruptionUpdate?ct_num=${detail.ct_num}" method="POST">
          <table>
            <tr>
              <th>소속대학</th>
              <td>
                <input type="text" name="ct_university" size="20" value="${detail.ct_university}" maxlength="9" required>
              </td>
            </tr>
            <tr>
              <th>제목</th>
              <td>
                <input type="text" name="ct_title" size="20" value="${detail.ct_title}" required>
              </td>
            </tr>
            <tr>
              <th>이름</th>
              <td>
                <input type="text" name="ct_name" size="20" value="${detail.ct_name}" maxlength="5" required>
              </td>
            </tr>
            <tr>
              <th colspan="2">내용</th>
            </tr>
            <tr>
              <td colspan="2">
                <textarea name="ct_content" id="ct_content" cols="30" rows="10" required>${detail.ct_content}</textarea>
              </td>
            </tr>
            <tr>
              <td colspan="2">
                <input type="submit" value="수정">
                <form id="listForm" action="main.nhn">
                	<button type="submit" onclick="goList">취소</button>
                </form>
              </td>
            </tr>
          </table>
        </form>
        </div>
      </div>
    </div>
  </div>


    <div id="footer">
      <div class="container">
        <div class="footer-contents">
 <p style="font-size: 14px;">08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>