<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function like_func(){
		var frm_read = $('#frm_read');
		var boardno = $('#boardno', frm_read).val();
		
		console.log("boardno, mon : " + boardno + "," + mno);
		
		$.ajax({
			url:"../liketo/like.do",
			type: "GET",
			cache: false,
			dataType: "json",
			data : 'boardno=' + boardno,
			success: function(data){
				var msg = '';
				var like_img = '';
				msg += data.msg;
				alert(msg);
				
				if(data.like_check ==0){
					like_img = "./images/dislike.png";
				} else {
					like_img = "./images/like.png";
				}
				$('#like_img', frm_read).attr('src', like_img);
				$('#like_cnt').html(data.like_cnt);
				$('#like_check').html(data.like_check);
			},
			error: function(request, status, error){
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
</script>
<body>
	<c:choose>
		<c:when test="${mno ne null}">
			<a href='javascript: like_func();'><img src="image" id='like_img'> </a>
		</c:when>
		<c:otherwise>
			<a href='javascript: login_need();'><img src="image"></a>
		</c:otherwise>
	</c:choose>
</body>
</html>