function agreecheckIt() {
    if($("#conditio-ok").is(':checked') == false) {
    	alert('약관에 동의 하신 후 가입하실 수 있습니다.');
    	return false;
    }
    if($("#conditio-ok-two").is(':checked') == false) {
    	alert('개인정보 수집 및 이용에 대한 안내에 동의 하신 후 가입하실 수 있습니다.');
    	return false;
    }
}
function gomain() {
	location.href='main.nhn';
}
