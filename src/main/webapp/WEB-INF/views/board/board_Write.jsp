<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상담 게시글 작성</title>
</head>
<script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
<link rel="stylesheet" href="resources/css/writeform.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
	integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic"
	rel="stylesheet">
<script src="resources/js/jquery-3.3.1.min.js"></script>
<script src="//cdn.ckeditor.com/4.7.1/full/ckeditor.js"></script>
<script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
	function goList() {
		var form = document.getElementById("#listForm");
		form.submit;
	}
	$(function() {
		$(".write-password").hide();
		$('input[name=chk_info]').click(function(){
			if($(this).val()=='secret'){
				$(".write-password").show();		
				$("#wr_password").prop("required",true)
			}else{
				$(".write-password").hide();			
				$("#wr_password").prop("required",false) 
			}		
		})

		CKEDITOR.replace('ckeditor', {//해당 이름으로 된 textarea에 에디터를 적용
			width : '94%',
			height : '300px',
			enterMode : '2',
	
	

			/* filebrowserImageUploadUrl : '<c:url value="/ckupload" />?${_csrf.parameterName}=${_csrf.token}' */
			filebrowserImageUploadUrl : '/community/imageUpload/' //여기 경로로 파일을 전달하여 업로드 시킨다. 
		});

		CKEDITOR.on('dialogDefinition', function(ev) {
			var dialogName = ev.data.name;
			var dialogDefinition = ev.data.definition;

			switch (dialogName) {
			case 'image': //Image Properties dialog
				//dialogDefinition.removeContents('info'd);
				dialogDefinition.removeContents('Link');
				dialogDefinition.removeContents('advanced');
				break;
			}
		});

		$('#upload02')
				.change(
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
	});

	function wordfilter() {
 		var filter = new Array();
		var filterdate = "<c:out value="${getConfigContemt.cf_filter}"/>"
		var txt =  $('#wr_subject').val();
		
		filter = filterdate.split(",");

		var data = CKEDITOR.instances.ckeditor.getData();
		var ckc = [" ",".","-","/","*","[","]","=","#"];  
		var position;

		for ( var i in filter) {
			position = data.indexOf(ckc[i]); 
			  while (position != -1){ 
				  data = data.replace(ckc[i],""); 
			    position = data.indexOf(ckc[i]); 
			  } 
		}
			  for (i=0; i<filter.length ; i++) { 
				  if (data.match(filter[i])) { 
				    alert(filter[i]+" 단어는 사용하실수 없습니다."); 
				    return event.preventDefault();
				  } 				
			}
	
				for ( var i in filter) {
					position = txt.indexOf(ckc[i]); 
					  while (position != -1){ 
						  txt = txt.replace(ckc[i],""); 
					    position = txt.indexOf(ckc[i]); 
					  } 
				}
			  
			  for (i=0; i<filter.length ; i++) { 
				  if (txt.match(filter[i])) { 
				    alert(filter[i]+" 단어는 사용하실수 없습니다."); 
				    return event.preventDefault();
				  } 				
			}
			  var form = document.frm;
			  form.submit();	  
		}
 	


</script>





<style>
#content {
	width: 100%;
}

.container {
	width: 1280px;
}
</style>

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
          <div class="write-content">
            <span class="span-1">글쓰기</span>
          </div>
          <div class="write-subject">
            <div class="write-subject1">
              <span class="">제목</span>
            </div>
            <div class="write-subject2">
            <c:if test="${'replyBoard' eq replyBoard }">
          	<form action="replyBoardWriter.nhn" method="post" enctype="multipart/form-data">
          	<input type="hidden" name="wr_parent" value="${wr_parent}">
          	<input type="hidden" name="wr_id" value="${wr_id}">
         	 </c:if>
          <form action="board_writer.nhn" method="post" enctype="multipart/form-data">
              <span class="span-3">옵션 </span>
              <input type="radio" name="chk_info" value="normal" checked><span class="span-3">일반</span>
              <input type="radio" name="chk_info" value="noti"><span class="span-3">공지</span>
              <input type="radio" name="chk_info" value="secret"><span class="span-3">비밀글</span>
            </div>
          </div>
      
          <div class="write-input">
            <input type="text" id="wr_subject" name="wr_subject" required value="">
          	 <div class="write-password">
              <span class=""><br>비밀번호</span>
            	<input type="text" id="wr_password" name="wr_password" value="" style="display:flex; width:25%; margin-top:10px;">
            </div>
          </div>
          <div class="write-textarea">
            <textarea name="wr_content" id="ckeditor" rows="8" cols="80"></textarea>
          </div>
          <div class="write-link">
            <ul>
              <li>
                <i class="fas fa-link"></i><input type="text" name="wr_link1" value="" placeholder="link 1 입력">
              </li>
              <li>
                <i class="fas fa-link"></i><input type="text" name="wr_link2" value="" placeholder="link 2 입력">
              </li>
            </ul>
					</div>
					<div class="partner-write-table">
						<c:if test="${'replyBoard' ne replyBoard}">
							<div class="partner-write-file">
								<div class="partner-upload">
									<input type="text" readonly="readonly" id="uploadlist"
										class="file-name" /> <label for="upload02" class="file-label">찾아보기</label>
									<input type="file" name="filename" id="upload02"
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
					</div>
					<input type="hidden" name=boardName value="${boardName}">
					<input type="hidden" name=replyBoard value="${replyBoard}">
					<div class="buttonTest">
						<button type="submit"onclick="wordfilter()">글쓰기</button>
					</div>
					<!-- <input type="submit" value="전송" class="button" onclick="wordfilter()"> -->
					</form>
					
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
</body>
</html>