var SetTime = 180;
var tid;
function emailcheck() {
	var mb_email_result = $('#mb_email_result');
	if (!$("#mb_email").val()) {
		mb_email_result.html('인증요청을 하시려면 email을 입력하세요.');
		mb_email_result.css('color', 'red');
		return false;
	}
	return true;
};

function msg_time() {	// 1초씩 카운트
	var mb_email_result = $('#mb_email_result');
	m = Math.floor(SetTime / 60)+"분"+(SetTime % 60)+"초";
	var msg = "인증 유효 시간 <font color='red'>" + m;
	mb_email_result.html(msg);
	mb_email_result.css('color', 'green');
	SetTime--;					// 1초씩 감소
	if (SetTime < 0) {			// 시간이 종료 되었으면..
		clearInterval(tid);		// 타이머 해제
		mb_email_result.html('인증시간 초과');
		mb_email_result.css('color', 'red');
	}
};

function TimerStart() {
	tid=setInterval('msg_time()',1000);
};

function chageLangSelect(val) {
	var langSelect = document.getElementById("sub_email");
	var selectValue = val
	if(selectValue == '직접입력') {
		$("#mb_email2").val('');
		$("#mb_email2").focus();
		return false;
	}
	$("#mb_email2").val(selectValue);
};
function TimerEnd() {
	if(tid != null) {
		SetTime = 180;
		clearInterval(tid);		// 타이머 해제
	}
};
$(document).ready(function () {
	$("#emailbtn").click(function () {	
		if(emailcheck()) {
			TimerEnd();
			var mb_email_result = $('#mb_email_result');
			var mb_email = $("#mb_email").val() + '@' + $("#mb_email2").val();
			$('#emailbtn').attr('disabled', 'disabled');
			mb_email_result.css('color', 'red');
			mb_email_result.html('발송 중 입니다.');
			var query = { mb_email: mb_email };
			$.ajax({
				type: "post",
				url: "regimail",
				data: query,
				success: function(data) {
					if(data == 'RE') {
						mb_email_result.html('다시 입력해주세요.');
						mb_email_result.css('color', 'red');
						$('#emailbtn').removeAttr('disabled');
					} else if(data == 'OK') {
						TimerStart();
						$('#emailbtn').removeAttr('disabled');
					} else if(data == 'NO') {
						mb_email_result.html('이미 가입된 email입니다.');
						mb_email_result.css('color', 'red');
						$('#emailbtn').removeAttr('disabled');
					}
				}
			});
		}
	});
});

$(document).ready(function () {
	$("#email_checkbtn").click(function () {
		var mb_emctf_result = $('#mb_emctf_result');
		var mb_emctf = $('#mb_emctf');
		var mb_email_result = $('#mb_email_result');
		var mb_email = $("#mb_email").val() + '@' + $("#mb_email2").val();
		mb_emctf_result.html('인증 요청 중입니다.');
		mb_emctf_result.css('color', 'red');
		alert(mb_email);
		var query = { emctf: $("#mb_emctf").val(), email: mb_email};
		$.ajax({
			type: "post",
			url: "emctf",
			data: query,
			success: function(data) {
				if(data == 'NO') {
					mb_emctf_result.html('인증번호가 유효하지 않습니다.');
					mb_emctf_result.css('color', 'red');
					mb_emctf_result.focus();
				} else if(data == 'OK') {
					clearInterval(tid);
					location.href="register";
				}
			}
		});
	});
});

function gomain() {
	location.href='main.nhn';
}
