<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>전국교수노동조합</title>
  
  
</head>
  <link rel="stylesheet" href="resources/css/branch.css">
  <script src="resources/js/jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<!--   <script src="resources/js/branch.js"></script> -->
  <script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
    var sBtn = $(".professor-kinds ul > li");
    sBtn.find("a").click(function(){
    sBtn.removeClass("active");
    $(this).parent().addClass("active");
    })
    }); 
    
</script>

<body>
<div id="wrap">
   <jsp:include page="/resources/header.jsp" ></jsp:include>
  <div id="contents">
    <div class="contents-container">
      	<jsp:include page="/resources/sidebar.jsp"></jsp:include>

      <div class="professor-contents">
        <div class="professor-top">
          <h2>교수노조 안내</h2>
            <div class="professor-button">
              <button id="guide" onclick="location.href='branchboardGuidance'" style="color: #fff; width: 20%; height: 30px; background-color: #23539b;">안내</button>
              <button id="branch" onclick="location.href='branchboardlist?pageInfo=1&side=branchboardlist'" style="width: 20%; height: 30px; background-color: #fff;">지부지회</button>
              <input type="hidden" id="pageInfo" value="${pageInfo}">
          </div>
        </div>
        <div class="professor-center">
          <div class="professor-box1">
          	<h4>1. 전국교수노동조합 소개</h4>
          		<hr>
          		<p>전국 교수 노동조합은 2001년 11월 10일 출범했습니다. 당시는 2002년 계약 임용제와 연봉제 시행이 목전으로 다가온 시점으로 대학 교원의 근로조건이 열악화될 것이 분명하게 예상되었습니다.</p>
          		<br>
          		<p>출범선언문에서는 대학의 민주화와 사회 민주화의 초석을 만들어 갈 것을 다짐했습니다. 그리고 지금까지 공공성을 지향하는 민주적인 대학운영 구조 확립, 대학자치와 학문의 자유 구현, 교육과 연구의 질을 향상시키기 위한 제도 마련, 교권과 교수 신분을 보장하기 위한 계약제와 연봉제 도입 저지, 교권침해를 당한 교수들에 대한 신분 회복 등을 위해 교육·노동·시민 사회단체들과 연대하며 노력했습니다.</p>
          		<br>
          		<p>규약 제2조 (목적)  조합은 대학교원의 권익을 적극 옹호하고 공공성과 민주성을 지향하는 대학교육 및 학문연구의 발전에 기여함을 목적으로 한다.</p><br>
          		<br>
          	<h4>2.사업</h4>
          	<hr>
          		<p><b>전국교수노동조합은 기본적으로 규약 제3조 (사업)에 명시된 사업을 합니다.</b></p>
          		<p>&nbsp;&nbsp;-제3조 (사업) 조합은 제2조의 목적을 달성하기 위하여 다음의 사업을 한다.</p>    
          		<p>1. 조합원의 노동조건의 개선과 대학교원의 사회적·경제적 지위 향상</p><p>2. 교육환경, 대학·학문정책과 제도의 개선을 위한 사업</p><p>3. 대학민주화, 대학자치와 학문의 자유를 확립하기 위한 사업</p><p>4. 대학개혁과 교권보장을 위한 각종 연구 및 실천사업</p><p>5. 산하조직과 조합원에 대한 교육, 교권옹호, 복지후생, 문화 및 선전홍보사업</p><p>6. 노동·교육·시민·사회단체와의 제휴와 노동·교육운동의 국제적 연대활동에 관한 사업</p><p>7. 기타 조합의 목적달성에 필요한 사업</p>
          		<hr>
          		<br>
			<h4>3.2019년 교수노조 핵심 3대 사업</h4>
				<hr>
				<p><b>1)대학공공성강화를 위한 대학혁신 정책 추진</b></p>
				<table class="fdsa" style="border: 1px solid;">
					<colgroup>
					<col width="3%">
					<col width="35%">
					<col width="31%">
					<col width="31%">
					
					</colgroup>
				
					<tr>
						<th></th>
						<th>사업</th>
						<th>추진일정</th>
						<th>추진 방법</th>
					</tr>
					<tr>
						<td>1</td>
						<td>고등교육재정교부금법 제정 촉구, 공영형사립대 추진</td>
						<td></td>
						<td rowspan="5"></td>
					</tr>
					<tr>
						<td>2</td>
						<td>대학 구조개혁</td>
						<td></td>
					
					</tr>
					<tr>
						<td>3</td>
						<td>대학평의원회, 민주적 총장직선제</td>
						<td></td>
					
					</tr>
					<tr>
						<td>4</td>
						<td>강사법 시행에 따른 조치, 학문후속세대 대응(학문생태계와 학문노동정책)</td>
						<td>
						3.30. 민교협 내부토론회 참석<br>
						4.12. 대학정책학회 참석<br>
						4.18. 국회토론회 주관단체로 참여</td>
						
					</tr>
					<tr>
						<td>5</td>
						<td>국가교육위원회</td>
						<td></td>
						
					</tr>
				</table>
				<br>
				<p><b>2) 교권 확보 정책 추진</b></p>
				
				<table class="fdsa" style="border: 1px solid;">
					<colgroup>
					<col width="3%">
					<col width="36%">
					<col width="40%">
					<col width="21%">
					
					</colgroup>
				
					<tr>
						<th></th>
						<th>사업</th>
						<th>추진일정</th>
						<th>추진 방법</th>
					</tr>
					<tr>
						<td rowspan="5">1</td>
						<td rowspan="5">노동권 보장을 위한 교원노조법 개정</td>
						<td>- 교원노조법 개정 TFT 구성</td>
						<td>- 3월~4월</td>						
					</tr>
					<tr>

						<td>- 국교련, 사교련, 서교련 등 대학 교원단체로부터 의견 수렴.</td>
						<td>- 2~4월</td>						
					</tr>
					<tr>

						<td>- 지부 간담회</td>
						<td>- 1~3월</td>						
					</tr>
					<tr>

						<td>- 토론회 개최</td>
						<td>- 3월~ 4월</td>						
					</tr>
					<tr>

						<td> 국회 환노위에 의견 제시</td>
						<td>- 3~5월</td>						
					</tr>
					<tr>
						<td>2</td>
						<td>ILO 핵심협약 비준 촉구</td>
						<td>- 노동단체와의 연대</td>
						<td>- 전반기</td>						
					</tr>
					<tr>
						<td>3</td>
						<td>계약임용제와 연봉성과급제 폐지와 혁신</td>
						<td>- 토론회, 언론기고</td>
						<td>- 후반기</td>						
					</tr>
					<tr>
						<td rowspan="3">4</td>
						<td rowspan="3">교권(교원의 정체성 포함) 상담 및 대응 강화</td>
						<td>- 상담, 판례제공</td>
						<td>- 일상적으로 진행</td>						
					</tr>
					<tr>

						<td>- 교권(노동 포함)아카데미 개최</td>
						<td></td>						
					</tr>
					<tr>

						<td>- 조합원 대상 워크숍 및 토론회</td>
						<td></td>						
					</tr>
					<tr>
						<td>5</td>
						<td>단체교섭 방법 매뉴얼 준비</td>
						<td>- 임금협약서, 단체협약서 모델 준비<br>
							- 교섭방법 매뉴얼 준비</td>
						<td>- 후반기</td>						
					</tr>
					
				</table>
				<br>
				<p><b>3) 조직정비 및 조직 강화·확대 추진</b></p>
								<table class="fdsa" style="border: 1px solid;">
					<colgroup>
					<col width="3%">
					<col width="36%">
					<col width="40%">
					<col width="21%">
					
					</colgroup>
				
					<tr>
						<th></th>
						<th>사업</th>
						<th>추진일정</th>
						<th>추진 방법</th>
					</tr>
					
					<tr>
					<td>1</td>
					<td>교원노조법 개정 전 지부 정비</td>
					<td>
					- 지부운영규정, 지회운영규정에 맞춰 조직 정비<br>
					- 지회설립
					</td>
					<td></td>
					</tr>
					<tr>
					<td>2</td>
					<td>교원노조법 개정에 대비한 규약·규정 개정</td>
					<td>- 규약·규정 개정 TFT</td>
					<td></td>
					</tr>
					<tr>
					<td rowspan="2">3</td>
					<td rowspan="2">대학별·권역별·지부별 전국교수노동조합 설명회</td>
					<td>- 조직강화 특위 구성</td>
					<td>- 3월~4월</td>
					</tr>
					<tr>
					<td>
					- 지회설립 및 조직 강화 Q&A 제공<br>
					- 홍보 강화
					</td>
					<td></td>
					</tr>
					<tr>
					<td>4</td>
					<td>사무처 정비</td>
					<td>- 인원 확충</td>
					<td></td>
					</tr>
				
					</table>
					<br>
				<p><b>3) 조직정비 및 조직 강화·확대 추진</b></p>
				<br>
				<p>(1) 교권사업 : 재임용거부처분, 징계처분, 취업규칙불이익변경, 임용계약 상의 불이익처분, 직권면직처분 등 다양한 불이익처분에 대해 상담과 지원, 설명회 개최</p>
				<br><p>(2) 조직사업 : 대학의 비리와 비민주화에 맞서 투쟁하는 대학 현장 파악과 지원</p>
				
					
          		 
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