$(document).ready(function () {
	$("#idfind_btn").click(function () {	
		if(idval()) {
			var id_email_result = $('#id_email_result');
			$('#idfind_btn').attr('disabled', 'disabled');
			var query = { name:  $("#id_name").val(), email: $("#id_email").val() };
			$.ajax({
				type: "post",
				url: "idfind",
				data: query,
				success: function(data) {
					if(data == '') {
						id_email_result.html('아이디가 존재하지 않습니다.');
						id_email_result.css('color', 'red');
						$('#idfind_btn').removeAttr('disabled');
					} else if (data == 'nameNo') {
						id_email_result.html('아이디와 이메일을 확인해주세요.');
						id_email_result.css('color', 'red');
						$('#idfind_btn').removeAttr('disabled');
					} else {
						id_email_result.html('회원님의 아이디는 ['+data+'] 입니다');
						$('#idfind_btn').removeAttr('disabled');
					}
				}
			});
		}
	});
});

$(document).ready(function () {
	$("#passfind_btn").click(function () {	
		if(passval()) {
			var pass_email_result = $('#pass_email_result');
			pass_email_result.html('');
			$('#passfind_btn').attr('disabled', 'disabled');
			var query = { id: $("#pass_id").val() , email: $("#pass_email").val()};
			$.ajax({
				type: "post",
				url: "passfind",
				data: query,
				success: function(data) {
					if(data == 'IDNO') {
						pass_email_result.html('아이디를 다시한번 확인해주세요.');
						pass_email_result.css('color', 'red');
						$('#passfind_btn').removeAttr('disabled');
					} else if (data == 'EMAILNO') {
						pass_email_result.html('이메일을 다시한번 확인해주세요.');
						pass_email_result.css('color', 'red');
						$('#passfind_btn').removeAttr('disabled');
					} else if (data == 'OK') {
						pass_email_result.html('이메일로 임시비밀번호가 발급 되었습니다.');
						pass_email_result.css('color', 'green');
					}
				}
			});
		}
	});
});

function idval() {
	var id_email_result = $('#id_email_result');
	if (!$("#id_email").val()) {
		id_email_result.html('email을 입력하세요.');
		id_email_result.css('color', 'red');
		return false;
	}
	return true;
};

function passval() {
	var pass_id_result = $('#pass_id_result');
	var pass_email_result = $('#pass_email_result');
	if (!$("#pass_id").val()) {
		pass_id_result.html('id를 입력하세요.');
		pass_id_result.css('color', 'red');
		return false;
	}
	if (!$("#pass_email").val()) {
		pass_email_result.html('email을 입력하세요.');
		pass_email_result.css('color', 'red');
		return false;
	}
	return true;
};

function goidfind() {
	location.href="userfind?pageInfo=idfind";
}
function gopassfind() {
	location.href="userfind?pageInfo=passfind";
}
$(document).ready(function () {
	var pageInfo = $("#pageInfo").val();
	if(pageInfo == 'idfind') {
		$("#idfind").css('color', '#2196F3');
		$("#idfind").css('border-bottom', '3px solid #2196F3');
	}else {
		$("#passfind").css('color', '#2196F3');
		$("#passfind").css('border-bottom', '3px solid #2196F3');
	}
});