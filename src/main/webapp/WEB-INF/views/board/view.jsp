<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/view.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>

<body>
  <div id="wrap">
    <div id="header">
      <div class="header-container">
        <div class="menu-top">
          <ul>
            <li><a href="#">로그인</a></li>
            <li><a href="#">회원가입</a></li>
          </ul>
        </div>
        <div class="menu-bottom">
          <div class="menu">
            <ul>
              <li class="menu-li">
                <a class="menu-a" href="#">교수노조소개</a>
                <ul>
                  <li><a href="#">출범선언</a></li>
                  <li><a href="#">추진배경/연혁</a></li>
                  <li><a href="#">강령규약</a></li>
                  <li><a href="#">교수노조 안내</a></li>
                  <li><a href="#">조직구성</a></li>
                  <li><a href="#">임원소개</a></li>
                  <li><a href="#">상징마크</a></li>
                  <li><a href="#">오시는길</a></li>
                </ul>
              </li>
              <li class="menu-li">
                <a class="menu-a" href="#">소식/공지사항</a>
                <ul>
                  <li><a href="#">공지사항</a></li>
                  <li><a href="#">소식</a></li>
                </ul>
              </li>
              <li class="menu-li">
                <a class="menu-a" href="#">성명/보도자료</a>
                <ul>
                  <li><a href="#">성명서</a></li>
                  <li><a href="#">보도자료</a></li>
                </ul>
              </li>
              <li class="menu-li">
                <a class="menu-a" href="#">자료실</a>
                <ul>
                  <li><a href="#">판례자료실</a></li>
                  <li><a href="#">사진자료실</a></li>
                  <li><a href="#">정책자료실</a></li>
                </ul>
              </li>
              <li class="menu-li">
                <a href="#">참여마당</a>
                <ul>
                  <li><a href="#">조합원 신청</a></li>
                  <li><a href="#">상담 신청</a></li>
                  <li><a href="#">대학비리고발</a></li>
                  <li><a href="#">자유게시판</a></li>
                  <li><a href="#">Q&A게시판</a></li>
                </ul>
              </li>
            </ul>
          </div>
          <div class="menu-icon">
            <i class="fas fa-bars"></i>
            <a href="#">메 뉴</a>
          </div>
        </div>
      </div>
    </div>

    <div id="contents">
      <div class="contents-container">
        <div class="side-professor">
          <div class="side-professor-img">
            <a href="#">
      <img src="resources/img/main/123.png">
    </a>
          </div>
          <div class="side-professor-title">
            <h2>교수노조 소개</h2>
          </div>
          <div class="side-professor-text">
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">출번선언</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">추진배경/연혁</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">강령규약</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">교수노조 안내</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">조직구성</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">임원소개</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">상징마크</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
            <div class="side-professor-kinds">
              <div class="side-text">
                <a href="#">오시는길</a>
              </div>
              <div class="side-icon">
                <i class="fas fa-angle-right"></i>
              </div>
            </div>
          </div>
        </div>

        <div class="professor-contents">
          <div class="professor-top">
            <h2>공지사항</h2>
          </div>
          <div class="professor-center">
            <div class="title">
              <div class="title-1">
                <p>${board.wr_subject }</p>
              </div>
              <div class="title-2">
                <span class="span-1"><a href="board_list.nhn?boardName=${boardName}">목록</a></span>
                <span class="span-1"><a href="replyBoardWrite.nhn?boardName=${boardName}&wr_id=${wr_id}&wr_parent=${wr_parent}">답변</a></span>
              </div>
            </div>
            <div class="view-content">
              <div class="view-content-top">
                <div class="view-content-day">
                  <span>작성일 :</span>
                  <span>${wr_datetime }</span>
                </div>
                <div class="view-content-writer">
                  <span>작성자 :</span>
                  <span>${mb_id }</span>
                </div>
                <div class="view-content-hit">
                  <span>조회 :</span>
                  <span>${wr_hit }</span>
                </div>
                <div class="view-content-like">
                  <span>추천 :</span>
                  <span>${wr_good }</span>
                </div>
              </div>
              <div class="view-content-file">
                <div class="view-content-filelist">
                  <ul>
                    <li><span class="span-7"><i class="fas fa-arrow-alt-circle-down"></i><a href="#">첨부 파일명.png</a></span></li>
                  </ul>
                </div>
              </div>
              <div class="view-content-link">
                <div class="view-content-linklist">
                  <ul>
                    <li><span class="span-6"><i class="fas fa-link"></i><a href="">http://www.kpu.or.kr/</a></span></li>
                  </ul>
                </div>
              </div>


              <div class="view-content-text">
             	${board.wr_content}
              </div>

              <div class="view-content-bottom">
                <div class="view-content-bottom-link">
                  <span class="span-1"><a href="board_list.nhn?boardName=${boardName}">목록</a></span>
                  <span class="span-1"><a href="replyBoardWrite.nhn?boardName=${boardName}&wr_id=${wr_id}&wr_parent=${wr_parent}">답변</a></span>
                  <span class="span-1"><a href="board_modify.nhn?wr_id=${board.wr_id}&boardName=${boardName }">수정</a></span>
                  <span class="span-1"><a href="board_delete?wr_id=${board.wr_id}&boardName=${boardName}">삭제</a></span>
                  <span class="span-1"><a href="#">스크랩</a></span>
          
                </div>
                <div class="view-content-bottom-like">
                  <div class="view-content-bottom-up">
                    <a href=""><i class="far fa-thumbs-up"></i></a><a href="board_like_nhn?wr_id=${wr_id}&boardName=${boardName }">추천</a>
                  </div>

                </div>
              </div>
              <div class="view-content-commentlist">
                <div class="commentbox">     
                <c:forEach var="c" items="${comentlist }">
					<c:set var="replyEnd" value="${c.wr_comment_reply } "></c:set>
                
                  <div class="commentboxlist"> 
                  <c:forEach var="nbsp" begin="0" end="${fn:length(replyEnd) }">
					&nbsp;&nbsp;&nbsp;
				</c:forEach>
                 <ul>
                      <li><span class="span-2">닉네임(xor***)</span></li>
                    </ul>
                    <ul>
                      <li><span class="span-4">내일모래서른살계란한판왕큰형님</span></li>
                    </ul>
                    <ul>
                      <li><span class="span-5">${c.wr_datetime}</span></li>
                    </ul>
                  </div>
                  </c:forEach>
                  

                </div>
              </div>
              <div class="view-content-comment">
                <textarea name="name" rows="8" cols="120" style="border-radius: 10px;"></textarea>
                <button type="button" name="button" style="border-radius:10px; width:100px; height:80px;margin-left:20px; background:white; margin-top:20px;">댓글입력</button>
              </div>
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
