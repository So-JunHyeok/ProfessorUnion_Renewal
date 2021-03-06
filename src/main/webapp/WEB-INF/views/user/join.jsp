<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/regi.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<script src="http://code.jquery.com/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="resources/js/join.js" charset="utf-8"></script>
<body>
  <div id="wrap">
    <div id="contents">
      <div class="contents-container">
        <div class="conditio">
          <form action="mailauth" method="post" onsubmit="return agreecheckIt()">
            <div class="conditio-top">
              <div class="conditio-name">
                <h3>회원가입</h3>
              </div>
              <div class="conditio-step">
                <div class="step-one">
                  <h4>STEP 01 약관동의</h4>
                </div>
                <div class="step-two">
                  <h4>STEP 02 본인인증</h4>
                </div>
                <div class="step-three">
                  <h4>STEP 03 회원정보 입력</h4>
                </div>
                <div class="step-for">
                  <h4>STEP 04 회원가입 완료</h4>
                </div>
              </div>
            </div>
            <div class="conditio-center">
              <div class="conditio-select-one">
                <div class="conditio-text">
                  <h4>이용약관</h4>
                </div>
                <div class="conditio-textarea">
                  <textarea name="terms" rows="8" cols="80" readonly>


  <이용약관>


  제1장 총칙

  제1조 (목적)

  이 약관은 전국교수노동조합이 제공하는 인터넷 서비스의 이용 조건 및 절차 등에 관한 사항을 규정함을 목적으로 합니다.

  제2조 (약관의 효력 및 변경)

  ① 이 약관은 "전국교수노동조합"에 회원으로 가입된 고객 및 비회원을 포함하여 서비스를 이용하고자 하는 모든 이용자에 대하여 그 효력이 발생합니다.

  ② 이 약관은 "전국교수노동조합" 서비스를 통하여 알리거나, 전자우편 또는 기타 "기관"이 정하는 방법에 의해 회원에게 공시함으로써 효력이 발생합니다.

  ③ "기관"은 약관의 규제에 관한 법률, 정보통신망이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 위배되지 않는 범위 안에서 이 약관을 변경할 수 있으며, 변경된 약관은 본 조 제2항과 같은

  방법으로 공지함으로써 그 효력이 발생합니다.

  ④ 회원은 이 약관의 변경에 대하여 주의의무를 다해야 하며, 변경된 약관내용을 알지 못해 생기는 회원의 피해는 "기관"이 책임지지 않습니다.

  ⑤ 회원은 변경된 약관에 동의하지 않을 경우, 서비스 이용을 중단하고 회원 탈퇴를 할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이내에 거부 의사를 표시하지 아니하면 동의한 것으로

  간주한다는 뜻을 공지하였음에도 불구하고 명확한 의사표시가 없는 경우, 또는 서비스를 계속하여 이용하는 경우에는 변경된 약관에 동의한 것으로 간주합니다.



  제3조 (약관 외 준칙)

  이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신망이용촉진 및 정보보호 등에 관한 법률 및 기타 관계법령, 또는 "기관"이 별도로 정한 지침 등에 의합니다.



  제4조 (서비스의 내용)

  "기관"은 회원에게 "기관"이 자체 제공하는 서비스와 타 업체 또는 타 기관이 개발한 서비스를 링크 방식 등으로 제공합니다. 단, 링크 서비스의 경우 서비스 제공사측의 사정에 따라 제공 일정 및 제공 방법이 변경되거나 지연, 혹은 제공되지 않을 수도 있으며, 이때 서비스 이용에 관한 책임은 서비스 제공사측에 있습니다.





  제2장 서비스 이용 계약 체결



  제5조 (이용 계약의 성립)

  ① 네티즌이 "기관"이 공시한 회원 가입 약관에 대해 "약관 동의"를 선택하면 이 약관에 동의한 것으로 간주합니다.

  ② "기관"은 본 약관을 필요 시 수시로 변경할 수 있고 회원은 언제든지 약관의 변경 내용을 수시로 확인해야 합니다. 회원이 변경된 약관에 동의하지 않을 경우, 서비스 이용을 중단하고 탈퇴할 수 있습니다.

  ③ "전국교수노동조합" 서비스를 이용하기 위해서는 "기관"에서 정한 소정의 가입 신청 양식에서 요구하는 모든 회원 정보를 기록하여 신청해야 합니다.

  ④ 가입 신청 양식에 쓰는 모든 회원 정보는 모두 실제 데이터인 것으로 간주됩니다. 실명이나 실제 정보를 입력하지 않은 사용자는 법적인 보호를 받을 수 없으며, 서비스의 제한, 해지 등의 불이익을 받을 수 있습니다. 또한 이를 위해 "기관"은 실명 확인 조치를 할 수 있습니다.

  ⑤ 이용 계약은 본 조 3항에 규정한 회원의 이용 신청에 대하여 "기관"이 승낙함으로써 성립합니다.



  제6조 (이용 신청의 승낙)

  ① "기관"은 회원이 제5조 제3, 4항에서 정한 사항을 정확히 기재하여 이용 신청을 하였을 때 다음 제2항, 제3항의 경우를 예외로 하여 승낙할 수 있습니다.

  ② "기관"은 다음의 경우 이용 신청에 대하여는 승낙을 유보 또는 취소할 수 있습니다.

  가. 서비스 이용에 시스템 상의 여유가 없는 경우

  나. 기술상 서비스 제공이 불가능한 경우

  다. 타사 서비스에 영향을 줄 수 있다고 판단되는 경우

  라. 사회의 안녕 질서 또는 미풍양속을 저해할 우려가 있는 경우

  마. 기타 사유로 이용 승낙이 곤란한 경우



  ③ "기관"은 다음 각 호에 해당하는 이용 신청에 대하여 이를 승낙하지 않을 수 있습니다.

  가. 이름이 실명이 아닌 경우

  나. 다른 사람의 명의를 사용하여 신청한 경우

  다. 이용 신청 시 필요 내용을 허위로 기재하여 신청한 경우

  라. 사회의 안녕 질서 또는 미풍양속을 저해할 목적으로 신청한 경우

  마. 기타 "기관"이 정한 이용 신청 요건이 만족 되지 않았을 경우





  제7조 (계약 사항의 변경)

  회원은 이용 신청 시 기재한 사항이 변경되었을 경우 온라인 또는 "기관"이 정한 별도의 이용 방법으로 정해진 양식 및 방법에 의하여 수정해야 합니다.



  제8조 (개인 정보 보호 정책)

  ① "기관"은 이용 신청 시 회원이 제공하는 정보, 커뮤니티 활동, 각종 이벤트 참가를 위해 회원이 제공하는 정보 등을 통하여 회원에 관한 정보를 수집하며, 회원의 개인 정보는 본 이용 계약의 이행과 본 이용 계약상의 서비스 제공을 위한 목적으로만 이용합니다.

  ② "기관"은 서비스 제공과 관련하여 취득한 회원의 신상 정보를 본인의 승낙 없이 제3자에게 누설 또는 배포할 수 없으며 상업적 목적으로 사용할 수 없습니다. 다만, 다음의 각 호의 경우에는 그러하지 아니합니다.

  가. 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우

  나. 정보통신윤리위원회의 요청이 있는 경우

  다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우

  라. 정보통신서비스의 제공에 따른 요금 정산을 위하여 필요한 경우

  마. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아 볼 수 없는 형태로 가공하여 제공하는 경우

  ③ 회원이 "전국교수노동조합"와 제휴한 서비스들을 편리하게 이용할 수 있도록 하기 위해 회원 정보를 "전국교수노동조합"와 제휴한 업체 또는 기관에 제공할 수 있습니다. 단, "기관"은 회원 정보 제공 이전에 제휴 업체, 제공 목적, 제공할 회원 정보의 내용 등을 사전에 공지하고 회원의 동의를 얻어야 합니다.

  ④ "기관"은 위 3항의 범위 내에서 "기관"의 업무와 관련하여 회원 전체 또는 일부의 개인 정보에 관한 집합적인 통계 자료를 작성하여 이를 사용할 수 있고, 서비스를 통하여 회원의 컴퓨터에 쿠키를 전송할 수 있습니다. 이 경우 회원은 쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는 컴퓨터의 브라우저의 설정을 변경할 수 있습니다.

  ⑤ "기관"은 다음의 각 호와 같은 경우에는 이용자의 동의 하에 개인 정보를 제3자에게 제공할 수 있습니다. 이러한 경우에도 개인 정보의 제3자 제공은 이용자의 동의 하에서만 이루어지며 개인 정보가 제공되는 것을 원하지 않는 경우에는, 특정 서비스를 이용하지 않거나 특정한 형태의 이벤트에 참여하지 않으면 됩니다.

  가. "전국교수노동조합" 사이트 내에서 벌어지는 각종 이벤트 행사에 참여한 회원의 개인 정보가 해당 이벤트의 주최자에게 제공될 수도 있습니다.

  ⑥ 회원이 이용 신청서에 회원 정보를 기재하고, 이 약관에 따라 이용 신청을 하는 것은 "기관"이 본 약관에 따라 이용 신청서에 기재된 회원 정보를 수집, 이용 및 제공하는 것에 동의하는 것으로 간주됩니다.

  ⑦ "전국교수노동조합" 서비스에서의 개인 정보 보호와 관련된 보다 자세한 사항은 "전국교수노동조합" 사이트에 게시된 개인 정보 보호 정책을 참조하시기 바랍니다.





  제3장 계약 당사자의 의무



  제9조 ("기관"의 의무)

  ① "기관"은 회원이 희망한 서비스 제공 개시일에 특별한 사정이 없는 한 서비스를 이용할 수 있도록 해야 합니다.

  ② "기관"은 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 멸실 된 때에는 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구합니다.

  ③ "기관"은 개인 정보 보호를 위해 보안 시스템을 구축하며 개인 정보 보호 정책을 공시하고 준수합니다.

  ④ "기관"은 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리해야 합니다. 다만, 즉시 처리가 곤란한 경우는 이용자에게 그 사유와 처리 일정을 통보해야 합니다.



  제10조 (회원의 의무)

  ① 회원은 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다. 또한 이러한 의무를 게을리함으로써 발생하는 민, 형사상의 모든 책임은 회원에게 있습니다.

  가. 타인의 개인 정보를 수집 또는 저장하여 유용하는 행위

  나. 서비스를 이용하여 얻은 정보를 회원의 개인적인 이용 외에 복사, 가공, 번역, 2차적 저작 등을 통하여 복제, 공연, 방송, 전시, 배포, 출판 등에 사용하거나 제3자에게 제공하는 행위

  다. 타인의 명예를 훼손하거나 불이익을 주는 행위

  라. 저작권이 있는 정보를 허락 없이 사용하거나 타 회원의 자료를 무단 도용하는 행위

  마. 공서 양속에 위반되는 내용의 정보, , 도형, 음성 등을 타인에게 유포하는 행위

  바. 범죄와 결부된다고 객관적으로 인정되는 행위

  사. 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위

  아. 서비스의 안정적 운영을 방해할 수 있는 정보를 전송하거나 수신자의 의사에 반하여 광고성 정보를 전송하는 행위

  자. 정보통신윤리위원회, 소비자보호단체 등 공신력 있는 기관으로부터 시정 요구를 받는 행위

  차. 선거관리위원회의 중지, 경고 또는 시정 명령을 받는 선거법 위반 행위

  카. 청소년보호법 등 기타 관계 법령에 위배되는 행위







  제4장 서비스 제공과 이용



  제11조 (회원 ID와 비밀번호 관리에 대한 회원의 의무와 책임)

  ① 아이디(ID)와 비밀번호에 관한 모든 관리 책임은 회원에게 있습니다. 회원에게 부여된 아이디(ID)와 비밀번호의 관리 소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다.

  ② 자신의 아이디(ID)가 타인에 의해 무단 이용되는 경우 회원은 반드시 "전국교수노동조합"에 그 사실을 통보해야 합니다.

  ③ 회원의 아이디(ID)는 "기관"의 사전 동의 없이 변경할 수 없습니다.

  ④ "기관"은 고객계좌 입금 등 제반 회원관리 업무를 회원 아이디(ID) 또는 "기관"이 정한 별도의 방법에 의하여 처리할 수 있습니다.



  제12조 (정보의 제공)

  ① "기관"은 회원이 서비스 이용 도중 필요하다고 인정되는 다양한 정보에 대해서 전자우편이나 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.

  ② "기관"은 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로 회원의 동의 하에 추가적인 개인 정보를 요구할 수 있습니다.



  제13조 (회원의 게시물)

  ① "전국교수노동조합"는 회원이 게시하거나 전달하는 서비스 내의 모든 내용물이 다음의 경우에 해당한다고 판단되는 경우 사전 통지 없이 삭제할 수 있습니다.

  가. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 훼손하는 내용인 경우

  나. 공서 양속에 반하는 저속, 음란한 내용인 경우 또는 이러한 내용을 게시, 전송, 링크시킬 수 있는 정보인 경우

  다. 범죄적 행위에 결부된다고 인정되는 내용인 경우

  라. "기관"의 저작권, 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우

  마. 제2항 소정의 세부 이용지침을 통하여 "기관"에서 규정한 게시 기간을 초과한 경우

  바. 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 포함하거나, 이의 유통과 관련한 내용인 경우

  사. "기관"에서 규정한 게시 기간을 초과한 경우

  아. "기관"에서 제공하는 서비스와 관련 없는 내용인 경우

  자. 해킹, 돈 벌기 광고, 상용 소프트웨어의 불법 복제·배포 및 전송, 기타 법령 및 본 약관에 저촉되는 상품 판매 등의 영업 활동을 하는 경우

  차. 타인의 아이디 등을 무단으로 도용하여 작성한 내용이거나, 타인이 입력한 정보를 무단으로 위·변조한 내용인 경우

  카. 청소년보호법, 전기통신기본법, 전기통신사업법 등 기타 관계법령 및 "기관"의 지침 등에 위반된다고 판단되는 경우



  ② "기관"은 게시물에 관련된 세부 이용 지침을 별도로 정하여 시행할 수 있으며 회원은 그 지침에 따라 각종 게시물을 등록, 삭제 등을 해야 합니다.



  제14조 (게시물의 저작권)

  ① 서비스에 게재된 모든 자료에 대한 권리는 다음과 같습니다.

  가. 회원이 서비스 내에 게시한 게시물에 대한 권리와 책임은 각 회원에게 있으며, 회원간 게시물을 공유할 수 있도록 전송하는 경우에도 동일합니다.

  나. 회원은 서비스 이용 과정에서 취득한 게시물을 게시자 또는 "기관"의 사전 승낙 없이 복제, 배포, 전시, 전송, 출판, 방송, 수정, 개조 또는 개변 등의 방법으로 이용하거나 제3자가 이용할 수 있도록 복제, 배포, 전송 등을 해서는 안 됩니다.

  다. 게시물은 개설자의 책임하에 게시된 것으로서 "기관"은 게시물의 신뢰도, 정확성, 신빙성 등에 관한 보증, 담보 등 일체의 책임을 부담하지 않습니다.

  라. "기관"은 회원이 서비스 내에 게시한 게시물이 타인의 저작권 등을 침해하는 경우 이에 대한 민·형사상의 어떠한 책임도 부담하지 않습니다. 만일, 회원이 타인의 저작권 등을 침해하였음을 이유로 "기관"이 제3자로부터 손해배상청구, 고소 또는 고발 등의 당사자가 된 경우 회원은 "기관"을 면책시켜야 하며, "기관"이 면책되지 못한 경우 회원은 그로 인해 회사가 입은 손해를 배상해야 합니다.

  마. "전국교수노동조합"이 작성한 저작물에 대한 저작권은 "기관"에 귀속하며, 이를 무단 도용하거나 무단 중개(링크 포함), 상업적인 이용은 금지합니다. 이를 어길 경우에는 관련법에 의거한 법적 조치를 받을 수 있습니다.





  제15조 (게시물의 이용)

  ① 회원은 "기관"이 게시물을 다음 각 호의 방법으로 이용하는 것을 허락합니다.

  가. 복제, 배포, 전시, 전송, 출판 등의 방법으로의 이용

  나. 제휴업체 또는 언론기관에 게시물 제공

  다. 홍보 목적으로의 이용



  ② "기관"이 제1항 각 호의 방법으로 게시물을 이용한 경우에는 그 사실을 전화, 팩스 또는 전자우편 등을 이용하여 통지합니다. 다만, 회원이 제공한 연락처가 사실과 다르거나, "기관"의 잘못 없이 연락처를 알 수 없는 경우에는 그러하지 않습니다.

  ③ "기관"이 제1항 나 호의 방법으로 회원의 게시물을 이용하는 경우에는 회원의 개인정보는 제공하지 않습니다.



  제16조 (서비스 이용 시간)

  ① 서비스의 이용은 "기관"의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로 합니다. 다만, 시스템 점검, 설비의 교체 또는 증설 등 서비스 운영상의 목적으로 "기관"이 정한 기간 동안에는 서비스가 일시 중단될 수 있으며, 이러한 경우에는 사전에 공지합니다.

  ② "기관"의 업무상 또는 기술상의 장애로 인하여 서비스를 운영하지 못하는 경우에는 "전국교수노동조합"에 공지하거나 회원에게 이를 통지합니다. 다만, 시스템의 오동작, 천재지변과 같이 미리 예측하기 어려운 경우에는 그러지 아니할 수 있으며 "전국교수노동조합"은 이로 인한 피해를 책임지지 않습니다.



  제17조 (서비스 이용 책임)

  회원은 "기관"에서 공식적으로 인정한 경우를 제외하고는 서비스를 이용하여 상품을 판매하는 영업 활동을 할 수 없으며 특히 해킹, 광고를 통한 수익, 음란 사이트를 통한 상업 행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어기고 발생한 영업 활동의 결과 및 손실, 관계 기관에 의한 구속 등 법적 조치 등에 관해서는 "기관"이 책임을 지지 않습니다.



  제18조

  제20조 (서비스 제공의 변경 또는 중지)

  ① "기관"은 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.

  1. 서비스용 설비의 보수 등 공사로 인한 부득이한 경우

  2. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우

  3. 기타 불가항력적 사유가 있는 경우



  ② "기관"은 국가 비상사태, 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 서비스 이용에 지장이 있는 때에는 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.

  ③ "기관"의 사정으로 서비스를 영구적으로 중단하여야 할 경우 전항에 의거합니다. 단, 이 경우 사전 고지 기간은 1개월로 합니다.

  ④ "기관"은 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 회원 또는 제3자에게 어떠한 책임도 부담하지 않습니다.

  ⑤ "기관"은 회원이 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다. 이 경우 "기관"은 위 회원의 접속을 금지할 수 있으며, 위 회원이 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.





  제5장 계약 해지 및 이용 제한



  제21조 (계약 해지 및 이용 제한)

  ① 회원이 서비스 이용 계약을 해지하고자 할 경우에는 본인이 온라인 또는 "기관"이 정한 별도의 이용 방법을 통해 "기관"에 해지 신청을 하여야 합니다.

  ② "기관"은 회원이 다음의 경우에 해당하는 행위를 하였을 경우 사전 통지 없이 이용 계약을 해지하거나 또는 서비스 이용을 중지할 수 있습니다.

  1. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 훼손하는 내용인 경우

  2. 서비스 운영을 고의로 방해한 경우

  3. 가입한 이름이 실명이 아닌 경우

  4. 동일 사용자가 다른 ID로 이중 등록을 한 경우

  5. 공서 양속에 저해되는 내용을 고의로 유포시킨 경우

  6. 회원이 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행 하는 경우

  7. 타인의 명예를 손상시키거나 불이익을 주는 행위를 한 경우

  8. 서비스의 안정적 운영을 방해할 목적으로 정보를 전송하거나 광고성 정보를 전송하는 경우

  9. 통신설비의 오 동작이나 정보 등의 파괴를 유발시키는 컴퓨터 바이러스 프로그램 등을 유포하는 경우

  10. "기관", 다른 회원 또는 제3자의 지적재산권을 침해하는 경우

  11. 정보통신윤리위원회 등 외부기관의 시정 요구가 있거나 선거관리위원회의 중지, 경고 또는 시정명령을 받는 선거법 위반행위가 있는 경우

  12. 타인의 개인정보, 이용자ID 및 비밀번호를 부정하게 사용하는 경우

  13. "전국교수노동조합"의 서비스 정보를 이용하여 얻은 정보를 "기관"의 사전 승낙 없이 복제 또는 유통시키거나 상업적으로 이용하는 경우

  14. 회원이 게시판 등에 음란물을 게재하거나 음란사이트를 연결(링크)하는 경우

  15. 이용 약관을 포함하여 기타 "기관"이 정한 이용조건에 위반한 경우



  ③ "기관"은 회원이 이용계약을 체결하여 아이디(ID) 및 비밀번호를 부여 받은 후에라도 회원의 조건에 따른 서비스 이용을 제한할 수 있습니다.

  ④ 본 조 제2항, 제3항의 조치에 대하여 회원은 "기관"이 정한 절차에 따라 이의 신청을 할 수 있습니다.

  ⑤ 본 조 4항의 이의가 정당하다고 인정하는 경우, "기관"은 즉시 서비스의 이용을 재개해야 합니다.





  제6장 손해 배상 등



  제22조 (손해 배상)

  ① "기관"은 회원이 서비스로부터 기대되는 이익을 얻지 못하였거나, 서비스에 담긴 정보에 의존함으로써 입은 손해 등에 대해 책임이 없습니다. 회원 각자는 스스로의 판단에 의하여 그러한 정보를 이용할 것을 확인합니다.

  ② 회원이 서비스를 이용함에 있어 행한 불법 행위로 인하여 "기관"이 당해 회원 이외의 제3자로부터 손해 배상 청구, 소송을 비롯한 각종의 이의 제기를 받는 경우 당해 회원은 "기관"의 면책을 위하여 노력해야 하며, 만일 "기관"이 면책되지 못한 경우는 당해 회원은 그로 인하여 회사에 발생한 모든 손해를 배상해야 합니다.



  제23조 (면책 사항)

  ① "기관"은 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.

  ② "기관"은 회원의 귀책 사유로 인한 서비스의 이용 장애에 대하여 책임을 지지 않습니다.

  ③ "기관"은 기간통신사업자가 전기통신서비스를 중지하거나 정상적으로 제공하지 아니하여 발생한 손해에 대하여는 책임이 면제됩니다.

  ④ "기관"은 서비스 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한 책임이 면제됩니다.

  ⑤ "기관"은 회원의 컴퓨터 오류에 의해 손해가 발생한 경우 또는 회원이 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.

  ⑥ "기관"은 회원이 서비스에 게재한 게시물의 내용에 대하여 책임을 지지 않습니다.

  ⑦ "기관"은 회원이 서비스를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지 않으며 그 밖에 서비스를 통하여 얻은 자료로 인한 손해 등에 대하여도 책임을 지지 않습니다. "기관"은 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 대하여는 책임을 지지 않습니다.



  제24조 (관할법원)

  ① 서비스 이용과 관련하여 "기관"과 회원 사이에 분쟁이 발생한 경우, 쌍방간에 분쟁의 해결을 위해 성실히 협의한 후가 아니면 제소할 수 없습니다.

  ② 본 조 1항의 협의에서도 분쟁이 해결되지 않을 경우 관할 법원은 "기관" 본 소재지를 관할하는 법원을 관할 법원으로 합니다.
                  </textarea>
                </div>
                <div class="conditio-radio">
                  <div class="OK">
                    <input type="radio" id="conditio-ok" name="agreement1" value="동의">
                    <label for="conditio-ok">동의합니다.</label>
                  </div>
                  <div class="NO">
                    <input type="radio" id="conditio-no" name="agreement1" value="비동의">
                    <label for="conditio-no">동의하지 않습니다.</label>
                  </div>
                </div>
              </div>
              <div class="conditio-select-two">
                <div class="conditio-text">
                  <h4>개인정보 수집 및 이용에 대한 안내</h4>
                </div>
                <div class="conditio-textarea">
                  <textarea name="terms" rows="8" cols="80" readonly>


   <개인정보보호정책>

  저희 전국교수노동조합은 온라인상에서 귀하의 정보 보호를 위하여 다음과 같은 개인정보 보호정책 규정을 만들어 운영하고 있습니다. 이 같은 규정은 통신상의 정보 유출로 인한 인권 침해가 나타나고

  국민 개개인의 자유로운 생활이 크게 위협받고 있는 현 상황에서 회원의 사생활에 관련된 정보를 보호하고, 불법적인 개인 정보 유출 및 피해를 방지하기 위해 만든 것입니다. 회원 스스로 언제나

  확인할 수 있게 명시하고 있으며, 또한 정부의 법률 및 지침에 따라 변경될 수 있으니, 회원께서는 수시로 이를 확인하여 주시기 바랍니다.



   ■ 개인 정보 수집 목적 및 이용

   ■ 개인 정보 수집 항목

   ■ 개인 정보 보호를 위한 기술적, 관리적 대책

   ■ 개인 정보의 열람, 정정 및 회원 탈퇴와 정보 삭제

   ■ 개인 정보의 제공 및 보유

   ■ 회원 개인 정보의 보유 기간 및 이용 기간

   ■ 개인 정보 보호와 관련된 유의 사항

   ■ 개인 정보 관리 책임자 및 분쟁 조정 안내



   1. 개인 정보 수집 목적 및 이용

   "전국교수노동조합" 회원 여러분에게 적절한 콘텐츠와 다양한 서비스를 제공하기 위하여 필요한 최소한의 정보를 수집하고 있습니다. 수집된 개인 정보는 회원의 동의 없이는 절대 사용할 수 없으며, 회원 개인 정보의 사용 목적과 용도가 변경되는 경우 반드시 회원의 사전 동의를 받도록 하겠습니다. "전국교수노동조합"의 회원 가입 시 요청하는 정보는 서비스 제공 과정에서의 신분 확인 및 안정적이고 지속적인 서비스 제공을 위해서 사용하고 있으며, 또한 그러한 이용에 있어서도 회원의 동의를 구합니다.



   2. 개인 정보 수집 항목

   "전국교수노동조합"에서 수집하는 개인 정보는 회원 가입 시 기입하는 정보로서, 서비스 이용 상 꼭 필요한 필수 입력 사항과, 보다 나은 서비스 제공과 맞춤 서비스를 위한 선택 입력 사항 등이 있습니다. 필수 입력 사항은 이름, ID(필명), 비밀번호, 주민등록번호, 생년월일, E-MAIL, 연락 전화번호, 주소, 직업 등이며 맞춤 서비스를 위해 추가적인 정보를 요구하고 있습니다. 이때 기입하신 선택 입력 사항 정보 역시 해당 서비스 제공이나 회원의 동의 없이는 다른 어떠한 목적으로도 사용되지 않습니다.



   3. 개인 정보 보호를 위한 기술적, 관리적 대책

   회원의 개인 정보를 보호하기 위하여 "전국교수노동조합"는 회원의 개인 정보를 비밀번호로 보호하고 있습니다. 비밀번호는 회원 이외에 누구도 알 수 없으며, 개인 정보의 확인 및 변경도 비밀번호를 알고 있는 본인에 의해서만 가능합니다. 따라서 공공장소에서 사용할 경우에는 필히 '로그아웃'을 통하여 개인 정보가 담겨 있는 쿠키를 삭제하시기 바랍니다.

   "전국교수노동조합"는 회원 개인 정보가 외부로 유출되는 것을 막기 위하여 외부에서 서버로의 직접 접속을 막는 방화벽을 운용하고 있으며 회원의 비밀번호를 암호화 처리하여 관리자를 비롯하여 본인 외의 어떤 사람도 비밀번호를 알 수 없도록 처리하고 있습니다. 또한 개인 정보의 관리자를 최소한으로 제한하여 담당 직원에 대한 교육을 통하여 "전국교수노동조합"에서 정한 개인 정보 보호 정책을 준수하고 있습니다.



   4. 개인 정보의 열람, 정정 및 회원 탈퇴와 정보 삭제

   회원은 언제든지 자신의 개인 정보에 대한 열람, 수정 및 회원 탈퇴를 요구할 수 있습니다. 개인 정보의 수정, 열람 및 회원 탈퇴는 '회원 정보' 코너에서 직접 수정, 탈퇴 신청을 할 수 있습니다. 개인 정보의 수정에 대한 확인은 개인 정보 변경 후 즉시 확인할 수 있습니다. "전국교수노동조합" 개인 정보관리 담당자 02)871-8706

   회원 탈퇴 신청은 "전국교수노동조합" 사이트에 로그인하신 후 '회원 정보 - 회원 탈퇴'코너에서 직접 탈퇴 신청을 하시는 것을 원칙으로 합니다. 만약 로그인하실 수 없어 스스로 탈퇴 신청을 할 수 없는 경우에는 역시 개인 정보 관리 담당자에게 문의하시기 바랍니다. 회원 탈퇴 신청이 접수되면 "전국교수노동조합"은 접수와 동시에 회원 탈퇴 처리를 완료하여 회원의 서비스 이용을 중지합니다. 서비스 중지 상태란 로그인이 되지 않는 상태가 됨을 의미합니다.

   또한 회원이 사용하고 계시는 ID와 비밀번호는 원칙적으로 회원 자신만이 사용할 수 있습니다. "전국교수노동조합"은 회원정보의 보호를 위하여 비밀번호는 관리자도 알 수 없도록 암호화하여 처리하고 있습니다. 회원 ID와 비밀번호 도용 또는 타인의 사용 등으로 발생되는 문제에 대해서 "전국교수노동조합"의 고의 또는 과실이 아닌 경우 책임을 지지 않으므로 타인에게 노출되지 않도록 각별히 주의해 주시기 바랍니다.



   5. 개인 정보의 제공 및 보유

   "전국교수노동조합"의 서비스 제공과 관련하여 취득한 회원 정보는 본인의 승낙 없이 제3기관 및 제3자에게 제공될 수 없으며, 상업적으로 이용할 수 없습니다. 단 다음과 같은 경우에는 예외적으로 회원의 동의 없이 제3자에게 제공할 수 있습니다.

   ≫ 관계 법령에 의하여 수사상의 목적으로 관계기관으로부터 요구가 있는 경우

   ≫ 정보통신윤리위원회의 요청이 있는 경우

   ≫ 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우

   ≫ 통계 작성, 학술 연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 알아볼 수 없는 형태로 가공하여 제공하는 경우



   6. 회원 개인 정보의 보유 기간 및 이용 기간

   "전국교수노동조합" 회원 가입 시 제공한 정보는 회원 가입 시점부터 탈퇴 신청이 접수된 날까지 보관할 수 있습니다.

   회원 탈퇴 신청이 접수되고 회원의 개인 정보 보유 기간이 경과하면 회원 개인정보는 "전국교수노동조합"의 하드디스크에서 완전히 삭제되며 어떠한 용도로도 이용할 수 없도록 처리됩니다. 단, 회원ID는 게시물 등록자의 식별을 위하여 중복가입되지 않도록 처리됩니다.



   7. 개인 정보 보호와 관련된 유의 사항

   온라인상에서(게시판, E-MAIL) 귀하가 자발적으로 제공하는 개인 정보는 다른 사람들이 수집하여 사용할 수 있음을 항상 유념하시기 바랍니다. 다시 말하면 공개적으로 접속할 수 있는 온라인상에서 개인 정보를 게재하는 경우, 다른 사람들로부터 원치 않은 메시지를 받게 될 수도 있다는 것입니다.

   귀하의 ID나 비밀번호에 대한 보안 유지는 개인 정보의 보호를 위해 매우 중요한 사항이며, ID와 비밀번호의 보안 유지책임은 오로지 회원에게 있습니다. 따라서 온라인상에 접속해 있을 때에는 각별히 주의하시기 바랍니다. 특히 공공장소에서 "전국교수노동조합"의 서비스를 이용할 때에는 자신의 비밀번호가 노출되지 않도록 하고, 서비스 이용을 마친 후에는 정상적으로 로그아웃하고 활성화되어 있는 모든 브라우저 창을 종료해야만 합니다.



   8. 개인 정보관리 책임자 및 분쟁 조정 안내

   "전국교수노동조합"은 회원이 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인 정보를 보호하는 데 있어 귀하께 고지한 사항들에 반하는 사고가 발생할 시에 개인 정보 관리 책임자가 모든 책임을 집니다.

   그러나 기술적인 보완 조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다.

   개인 정보에 대한 문의는 "전국교수노동조합" 웹마스터(kpunion@gmail.com)에게 Email을 보내는 방법과 개인정보 관리 담당자에게 직접 전화나 FAX를 통해 문의하는 방법이 있습니다.

   귀하의 개인 정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인 정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.



   * 전국교수노동조합 개인정보 관리 책임자

   ≫ 담당자(kpunion@gmail.com)

   ≫ TEL : 02)871-8706

   ≫ FAX : 02)6008-3987



   "전국교수노동조합" 사이트 이용시 발생한 피해사항에 대해서는 '한국소비자보호원(www.cpb.or.kr)'에 신고하실 수 있으며 개인 정보 침해와 관련된 신고를 하시려면 '개인 정보 침해 신고 센터(www.cyberprivacy.or.kr)'에서 하실 수 있습니다.
                  </textarea>
                </div>
                <div class="conditio-radio">
                  <div class="OK">
                    <input type="radio" id="conditio-ok-two" name="agreement2" value="동의">
                    <label for="conditio-ok-two">동의합니다.</label>
                  </div>
                  <div class="NO">
                    <input type="radio" id="conditio-no-two" name="agreement2" value="비동의">
                    <label for="conditio-no-two">동의하지 않습니다.</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="conditio-bottom">
              <div class="conditio-btn">
                <input type="submit" name="agree" value="확인">
                <input type="button" name="cancel" value="취소" onclick="gomain()">
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</body>
</html>