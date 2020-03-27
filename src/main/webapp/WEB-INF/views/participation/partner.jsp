<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>전국교수노동조합</title>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/participation/partner.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <script src="resources/js/jquery-3.3.1.min.js" charset="utf-8"></script>
</head>
<script>

$(function() {
	$('#upload02').change(
			function() {
				var str = "";
				$(".uploadList").empty()
				var fileInput = document.getElementById("upload02");
				var files = fileInput.files;
				var file;
				var now = new Date();

				var year = now.getFullYear();
				var mon = (now.getMonth() + 1) > 9 ? ''
						+ (now.getMonth() + 1) : '0'
						+ (now.getMonth() + 1);
				var day = now.getDate() > 9 ? '' + now.getDate()
						: '0' + now.getDate();

				var chan_val = year + '-' + mon + '-' + day;

				var s = [ 'bytes', 'kB', 'MB', 'GB', 'TB', 'PB' ];
				for (var i = 0; i < files.length; i++) {
					file = files[i];

					var e = Math.floor(Math.log(file.size)
							/ Math.log(1024));
					var fileSize = (file.size / Math.pow(1024, e))
							.toFixed(2)
							+ " " + s[e];

					str += "<tr class='uploadList'>"
					str += "<td><a href='#'>" + file.name
							+ "</a></td>"
					str += "<td><a href='#'>" + fileSize
							+ "</a></td>"
					str += "<td><a href='#'>" + chan_val
							+ "</a></td>"
					str += "</tr>"
				}
				$("#fileUploadList").after(str)
			});

$("#wr_subject")
})

</script>
<body>
<div id="wrap">
  <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">

      
     <jsp:include page="/resources/sidebar.jsp"></jsp:include> 

      <div class="partner-content">
        <div class="partner-title">
          <h2>조합원가입신청</h2>
        </div>
        <div class="partner-box">
          <div class="partner-ex">
            <dl>
              <dt><h4>1. 조합원가입신청 방법</h4></dt>
              <dd><p>- 조합원가입신청을 위해서는 양식을 다운받으시고 작성하신 후에 서명하셔서 보내주시면 됩니다.</p></dd>
              <dd><p>- 서명을 하셔야 조합원 가입신청이 진행됩니다.</p></dd>
            </dl>
            <dl>
              <dt><h4>2. 조합원 조합비 안내</h4></dt>
              <dd><p>- 정년트랙 조합비 : 25,000원</p></dd>
              <dd><p>- 비정년트랙 / 퇴직조합원 조합비 : 15,000원</p></dd>
              <dd><p>- 가입신청원서 제출시 cms가 등록됩니다.</p></dd>
            </dl>
          </div>
          <div class="partner-down">
            <ul>
              <li>
                <i class="far fa-file-alt"></i>
                <a type="mime-type" href="partnerform.nhn?safeFile=form.hwp">조합원가입신청양식 다운로드 </a> 
              </li>
            </ul>
          </div>
        </div>
        <div class="partner-write-table">
          <form action="mailSending.nhn" method="post" enctype="multipart/form-data"><!-- enctype="multipart/form-data"  -->
            <table>
              <tr>
                <th>제목</th>
                <th>이름</th>
                <th>소속대학</th>
              </tr>
              <tr>
                <td><input type="text" name="title" placeholder="제목 입력" required></td>
                <td><input type="text" name="aname" placeholder="실명 입력" required></td>
                <td><input type="text" name="auniversity" placeholder="OOO대학교 입력" required></td>
                <td><input type="hidden" name="tomail" value="kpunion@gmail.com"></td>
                <td><input type="hidden" name="content" value=""></td>
              </tr>
            </table>
            <c:if test="${'replyBoard' ne replyBoard }">
				<div class="partner-write-file">
					<div class="partner-upload">
						<input type="text" readonly="readonly" id="uploadlist"
							class="file-name" /> <label for="upload02" class="file-label">찾아보기</label>
						<input type="file" name="filetest" id="upload02"
							class="file-upload" multiple="multiple" />
					</div>
					<div class="partner-file-list">
						<table>
							<tr>
								<th>파일명</th>
								<th>용량</th>
								<th>업로드날짜</th>
							</tr>
							<tr id="fileUploadList">
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>
				</c:if>
            <div class="partner-write-btn">
              <div class="partner-write-btn1">
                <input type="submit" value="신청하기">
                <input type="button" value="목록보기" onclick="location.href='agonyUserList'">
              </div>
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