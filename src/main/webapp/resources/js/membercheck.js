var overlap1 = false;
var overlap2 = false;
var overlap3 = false;
var overlap4 = false;

function allCheckIt() {
	var mb_id_result = $('#mb_id_result');
	var mb_password_result = $('#mb_password_result');
	var mb_repassword_result = $('#mb_repassword_result');
	var mb_nick_result = $('#mb_nick_result');
	var mb_email_result = $('#mb_email_result');
	var mb_name_result = $('#mb_name_result');
	var mb_birth_result = $('#mb_birth_result');
	var html = '필수 정보 입니다.';
	
	if (($("#mb_id").val()) == "") {
		all(mb_id_result, html, 'red');
		$("#mb_id").val("").focus();
		return false;
	}
	if (($("#mb_password").val()) == "") {
		all(mb_password_result, html, 'red');
		$("#mb_password").val("").focus();
		return false;
	}
	if (($("#mb_repassword").val()) == "") {
		all(mb_repassword_result, html, 'red');
		$("#mb_repassword").val("").focus();
		return false;
	}
	if (($("#mb_nick").val()) == "") {
		all(mb_nick_result, html, 'red');
		$("#mb_nick").val("").focus();
		return false;
	}
	if (($("#mb_email").val()) == "") {
		all(mb_email_result, html, 'red');
		$("#mb_email").val("").focus();
		return false;
	}
	if (($("#mb_name").val()) == "") {
		all(mb_name_result, html, 'red');
		$("#mb_name").val("").focus();
		return false;
	}
	if (($("#mb_birth").val()) == "") {
		all(mb_birth_result, html, 'red');
		$("#mb_birth").val("").focus();
		return false;
	}
    if($("#mb_job1").is(':checked') == false && 
		$("#mb_job2").is(':checked') == false &&
		$("#mb_job3").is(':checked') == false){
		alert('직업을 선택 해주세요.')
		return false;
	}
    if($("#mb_man").is(':checked') == false && 
			$("#mb_woman").is(':checked') == false){
		alert('성별을 선택 해주세요.')
		return false;
	}
	if(overlap1 == false) {
		mb_id_result.html('중복 된 아이디는 사용불가능 합니다.');
		$("#mb_id").val("").focus();
		return false;
	}
	if(overlap2 == false) {
		mb_password_result.html('비밀번호가 일치하지 않습니다.');
		mb_password_result.css('color', 'red');
		mb_repassword_result.html('비밀번호가 일치하지 않습니다.');
		$("#mb_password").val("").focus();
		$("#mb_repassword").val("").focus();
		return false;
	}
	if(overlap3 == false) {
		mb_nick_result.html('중복 된 별명은 사용불가능 합니다.');
		$("#mb_nick").val("").focus();
		return false;
	}
	if(overlap4 == false) {
		mb_password_result.html('영문/숫자/특수 문자 하나이상을 포함한 8 ~ 16자 이내 로 입력해주세요.');
		mb_password_result.css('color', 'red');
		$("#mb_password").val("").focus();
		return false;
	}
}

$(document).ready(function () {
	var mb_id_result = $('#mb_id_result');
	var mb_id = $("#mb_id");
	var html = "";
	mb_id.on('keyup', function(){
		if(checkIt()) {
			var query = { mb_id: $("#mb_id").val() };
			$.ajax({
				type: "post",
				url: "idcheck",
				data: query,
				success: function(data) {
					if(data == 'NO') {
						html = "이미가입 했거나, 탈퇴한 아이디입니다."
						all(mb_id_result, html, 'red');
						overlap1 = false;
					} else if(data == 'OK') {
						html = "사용 가능한 아이디입니다."
						all(mb_id_result, html, 'green');
						overlap1 = true;
					}
				}
			});
		}
	});
});


$(document).ready(function () {
	var mb_nick_result = $('#mb_nick_result');
	var mb_nick = $("#mb_nick");
	var html = "";
	mb_nick.on('keyup', function(){
		if(checkIt()) {
			var query = { mb_nick: $("#mb_nick").val() };
			$.ajax({
				type: "post",
				url: "nickcheck",
				data: query,
				success: function(data) {
					if(data == 'NO') {
						html = "중복 된 별명입니다."
							all(mb_nick_result, html, 'red');
						overlap3 = false;
					} else if(data == 'OK') {
						html = "사용 가능한 별명입니다."
							all(mb_nick_result, html, 'green');
						overlap3 = true;
					}
				}
			});
		}
	});
});

$(document).ready(function () {
	var pwd = $('#mb_password');
	var repwd = $('#mb_repassword');
	var nick = $('#mb_nick');
	var email = $('#mb_email');
	var name = $('#mb_name');
	var birth = $('#mb_birth');
	var m_Pw_result = $('#mb_password_result');
	var m_RePw_result = $('#mb_repassword_result');
	var m_NickName_result = $('#mb_nick_result');
	var m_Email_result = $('#mb_email_result');
	var m_Name_result = $('#mb_name_result');
	var m_Birth_result = $('#mb_birth_result');
	var html = "";
	pwd.on('keyup', function() {
		if(pwcheck()) {
			m_Pw_result.html('사용 가능합니다.');
			m_Pw_result.css('color', 'green');
			var pwd1 = pwd.val();
			var pwd2 = repwd.val();
			if(pwd1==pwd2){
				m_RePw_result.html('비밀번호가 일치합니다.');
				m_RePw_result.css('color', 'green');
				overlap2 = true;
			}else if(pwd2==''){
				m_RePw_result.html('필수 정보 입니다.');
				m_RePw_result.css('color', 'red');
			}else if(pwd1 != pwd2){
				m_RePw_result.html('비밀번호가 다릅니다.');
				m_RePw_result.css('color', 'red');
				overlap2 = false;
			}
		} else {
			html = "영문/숫자/특수 문자 하나이상을 포함한 8 ~ 16자 이내 로 입력해주세요.";
			all(m_Pw_result, html, 'red');
		}
	});
	repwd.on('keyup', function () {
		var pwd1 = pwd.val();
		var pwd2 = repwd.val();
		if(pwd1==pwd2){
			m_RePw_result.html('비밀번호가 일치합니다.');
			m_RePw_result.css('color', 'green');
			overlap2 = true;
		}else if(pwd2==''){
			m_RePw_result.html('필수 정보 입니다.');
			m_RePw_result.css('color', 'red');
		}else if(pwd1 != pwd2){
			m_RePw_result.html('비밀번호가 다릅니다.');
			m_RePw_result.css('color', 'red');
			overlap2 = false;
		}
	});
	nick.on('keyup', function() {
		if(nick.val()) {
			m_NickName_result.html('');
		}
	});
	email.on('keyup', function() {
		if(email.val()) {
			m_Email_result.html('');
		}
	});
	name.on('keyup', function() {
		if(name.val()) {
			m_Name_result.html('');
		}
	});
	birth.on('click', function() {
		if(birth.val()) {
			m_Birth_result.html('');
		}
	});
})
function all(result, html, color){
	result.html(html);
	result.css('color', color);
}
function checkIt() {
	var mb_id_result = $('#mb_id_result');
	// 아이디와 비밀번호가 제대로 입력되었는지 검사
	if($("#mb_id").val() == "") {
		mb_id_result.html('필수 정보입니다.');
		mb_id_result.css('color', 'red');
		return false;
	}
	return true;
}
function pwcheck() {
	var pwd = $('#mb_password').val();
	var pwpattern = /^.*(?=^.{8,16}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
	var m_Pw_result = $('#mb_password_result');
	if (pwpattern.test($.trim(pwd))) {
		overlap4 = true;
		return true;
	}else {
		overlap4 = false;
		return false;
	}
}
function gomain() {
	location.href='main.nhn';
}
