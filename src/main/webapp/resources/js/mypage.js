var overlap1 = false;
$(document).ready(function () {
	var befor_password = $("#befor_password");
	var after_password = $("#after_password");
	var after_repassword = $("#after_repassword");
	var befor_password_result = $("#befor_password_result");
	var after_password_result = $("#after_password_result");
	befor_password.on('keyup', function() {
		if(befor_password.val()) {
			befor_password_result.html('');
		}
	});
	after_password.on('keyup', function() {
		if(after_password.val()) {
			after_password_result.html('');
		}
	});
	after_repassword.on('keyup', function() {
		if(after_repassword.val()) {
			after_password_result.html('');
		}
	});
});

$(document).ready(function () {
	var mb_mailling = $("#mb_mailling");
	var mb_open = $("#mb_open");
	var mb_mailling_on = $("#mb_mailling_on");
	var mb_mailling_off = $("#mb_mailling_off");
	var mb_open_on = $("#mb_open_on");
	var mb_open_off = $("#mb_open_off");
	mb_mailling.click(function(){
		$(".mb_mailling").toggle();
		if(mb_mailling.val() == 1) {
			mb_mailling.attr("value", 0);
		}else {
			mb_mailling.attr("value", 1);
		}
		var query = { mb_mailling: $("#mb_mailling").val() };
		$.ajax({
			type: "post",
			url: "mailling",
			data: query,
			success: function(data) {
				if(data == 'NO') {
					alert('메일서비스를 수신 합니다.');
				} else {
					alert('메일서비스를 거부 합니다.');
				}
			}
		});
	});
	mb_open.click(function(){
		$(".mb_open").toggle();
		if(mb_open.val() == 1) {
			mb_open.attr("value", 0);
		}else {
			mb_open.attr("value", 1);
		}
		var query = { mb_open: $("#mb_open").val() };
		$.ajax({
			type: "post",
			url: "open",
			data: query,
			success: function(data) {
				if(data == 'NO') {
					alert('내 정보를 공개 합니다.');
				} else {
					alert('내 정보를 공개 하지 않습니다.');
				}
			}
		});
	});
	if(mb_mailling.val() == 1) {
		mb_mailling_off.hide();
		mb_mailling.attr("checked", true);
	} else {
		mb_mailling_on.hide();
	}
	if(mb_open.val() == 1) {
		mb_open_off.hide();
		mb_open.attr("checked", true);
	} else {
		mb_open_on.hide();
	}
});
$(document).ready(function () {
	var myinfo_btn = $("#myinfo_btn");
	var myinfo_btn2 = $("#myinfo_btn2");
	myinfo_btn.click(function() {
		$("input[type='text']").removeAttr('disabled');
		myinfo_btn2.css('display', 'inline');
		myinfo_btn.css('display', 'none');
	});
	myinfo_btn2.click(function() {
		var query = { mb_name: $("#mb_name").val(), mb_nick: $("#mb_nick").val(), mb_email: $("#mb_email").val() };
		$.ajax({
			type: "post",
			url: "modify",
			data: query,
			success: function(data) {
				if(data == 'emailNO') {
					alert('이미 가입되어 있는 이메일 입니다.');
				} else if(data == 'nickNO') {
					alert('이미 가입되어 있는 별명 입니다.');
				} else {
					$("input[type='text']").attr('disabled', 'disabled');
					myinfo_btn.css('display', 'inline');
					myinfo_btn2.css('display', 'none');
					alert('정보가 변경 되었습니다.');
				}
			}
		});
	});
});
$(document).ready(function () {
	var passchange_btn = $("#passchange_btn");
	var befor_password_result = $("#befor_password_result");
	var after_password_result = $("#after_password_result");
	passchange_btn.click(function() {
		if(passcheck()) {
			var query = { befor_password: $("#befor_password").val(), after_password: $("#after_password").val() }
			$.ajax({
				type: "post",
				url: "passchange",
				data: query,
				success: function(data) {
					if(data == 'OK') {
						alert('비밀번호가 변경 되었습니다.\n변경 된 비밀번호로 로그인 후 이용 하시기 바랍니다.');
						location.href="loginForm";
					}else if (data == 'beforNO') {
						befor_password_result.html('현재 비밀번호가 맞지 않습니다.');
						befor_password_result.css('color', 'red');
					}else {
						after_password_result.html('기존 비밀번호와 다른 비밀번호를 이용 해주세요.');
						after_password_result.css('color', 'red');
					}
				}
			});
		}
	});
});

function passcheck() {
	var befor_password_result = $("#befor_password_result");
	var after_password_result = $("#after_password_result");
	var pwd = $('#after_password').val();
	var pwpattern = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	if(!$("#befor_password").val()) {
		befor_password_result.html('비밀번호를 입력하세요.');
		befor_password_result.css('color', 'red');
		return false;
	}
	if(!$("#after_password").val()) {
		after_password_result.html('새 비밀번호를 입력하세요.');
		after_password_result.css('color', 'red');
		return false;
	}
	if(!$("#after_repassword").val()) {
		after_password_result.html('새 비밀번호 확인을 입력하세요.');
		after_password_result.css('color', 'red');
		return false;
	}
	if($("#after_password").val() != $("#after_repassword").val()) {
		after_password_result.html('새 비밀번호와 비밀번호 확인이 일치하지 않습니다.');
		after_password_result.css('color', 'red');
		return false;
	}
	if (!pwpattern.test($.trim(pwd))) {
		after_password_result.html('영문/숫자/특수 문자 하나이상을 포함한 8 ~ 16자 이내 로 입력해주세요.');
		after_password_result.css('color', 'red');
		return false;
	}	
	return true;
}

$(document).ready(function () {
	var delete_password_result = $("#delete_password_result");
	var delete_btn = $("#delete_btn");
	var success;
	delete_btn.click(function() {
		if(deletecheck()) {
			success = confirm("정말로 탈퇴하시겠습니까?");
			success;
			if(success) {
				var query = { pass: $("#delete_password").val() }
				$.ajax({
					type: "post",
					url: "deletemember",
					data: query,
					success: function(data) {
						if(data == 'OK') {
							alert('회원탈퇴가 완료 되었습니다.\n탈퇴하신 아이디로 로그인이 불가능해지며,\n자동 로그아웃 됩니다.');
							location.href="loginForm";
						}else if (data == 'passNO') {
							delete_password_result.html('비밀번호가 맞지 않습니다.');
							delete_password_result.css('color', 'red');
						}else {
							alert('관리자 아이디는 회원탈퇴가 불가능합니다.');
							location.href="login";
						}
					}
				});
			}
		}
	});
});

function deletecheck() {
	var delete_password_result = $("#delete_password_result");
	if(!$("#delete_password").val()) {
		befor_password_result.html('비밀번호 확인을 입력하세요.');
		befor_password_result.css('color', 'red');
		return false;
	}
	return true;
}
$(document).ready(function () {
	var pageInfo = $("#pageInfo").val();
	if(pageInfo == 'modify') {
		$("#memberinfo").css('color', '#2196F3');
		$("#memberinfo").css('border-bottom', '3px solid #2196F3');
	}else {
		$("#security").css('color', '#2196F3');
		$("#security").css('border-bottom', '3px solid #2196F3');
	}
});