<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>전국교수노동조합</title>
  <script src="resources\js\jquery-3.3.1.min.js" charset="utf-8"></script>
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/introduce/propel.css"> 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  
  
  <script type="text/javascript">
  function t_bt(){
	  var ctrl_bt_text = $("#ctrl_bt").text();
	  
	  if(ctrl_bt_text == "발자취보러가기▶"){
		  $("#ctrl_bt").text("추진배경보러가기▶");
		  $(".trace-box").show();
		  $(".propel-box").hide();
		  
	  }
	  if(ctrl_bt_text == "추진배경보러가기▶"){
		  $("#ctrl_bt").text("발자취보러가기▶");
		  $(".propel-box").show();
		  $(".trace-box").hide();
	  }
	  
	  
	  
  };
  
  </script>
  
  
  
</head>
<body>
<div id="wrap">
 
 <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
     
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>

      <div class="propel-content">
        <div class="propel-title">
          <h2>추진배경/연혁</h2>
          <br>
          <h3 id="ctrl_bt"  onclick="t_bt()">발자취보러가기▶</h3>
        </div>
        <div class="propel-box">
          <div class="propel-text">
            <h3>교수노조 건설의 필요성 - 추진배경</h3>
          </div>
          <table>
            <tr>
              <th>1. 대학의 총체적 위기</th>
            </tr>
            <tr>
              <td>
                <p>
                  우리나라 대학은 국공립·사립을 불문하고, 정부와 교육부의 획일적인 대학·교육정책에 의해 통제되고 있다. 대학 주체들의 의사는 무시한 채 강행되는 상명하달식의 사업추진, 고등교육 전반에 대한 대안부재의 정책으로 말미암아 대학 현장은 더욱 황폐화되고 있다. BK21은 대학의 서열화 및 기초학문의 위기를 가져왔고, 최근 강행되고 있는 국립대학발전계획, 일방적인 구조조정 계획인 전문대발전방안 등으로 대학교육은 총체적 위기에 직면하고 있다.
                </p>
                &nbsp;
                <p>
                  또한 사학재단과 교육부, 국회 기타 정치권(정관학 복합체)으로 이어지는 비리 구조는 국민 대다수가 찬성하고 있고 사학의 투명성과 공공성을 보장해줄 사립학교법 개정과 학원 민주화의 걸림돌이 되고 있다.
                </p>
                &nbsp;
                <p>
                  정부의 신자유주의 교육정책의 문제점은 바로 우리 대학을 국가의 비전과 인재를 양성하는 고등교육기관으로서가 아닌 오로지 경쟁과 효율성만을 강조하며 구조조정의 대상으로만 바라보고 있다는 점이다.
                </p>
                &nbsp;
                <p>
                   지금, 정부의 신자유주의 교육정책의 횡포에 맞서 국공립대, 사립대, 전문대의 교수가 나서지 않는다면 대학교육과 학문의 미래는 물론 국가의 장래를 약속하기 힘들 것이다.
                </p>
              </td>
            </tr>
            <tr>
              <th class="propel-table">2. 교권실추 및 전체교수의 비정규직화에 대한 대응의 요구</th>
            </tr>
            <tr>
              <td>
                  <p>
                    현 정부의 대학정책은 우리나라 교육과 학문의 앞날뿐만 아니라 동시에 교수들의 교육·연구 환경 및 신분·근로조건에도 지대한 영향을 미치고 있다. 사회경제적 여건 및 대학정책의 변화는 교수에 대한 사회적 대우 및 지위의 약화를 야기하여, 교수가 '지식노동자'임을 자각하게 되었다.
                  </p>
                  &nbsp;
                  <p>
                    교수 역시 임금생활자이고, 자신의 근로조건 등의 결정에 있어서 사용자인 국가 또는 사학법인과 대등한 입장에 있지 않으므로 단결의 필요성에 있어서 일반 근로자와 차이가 없다.
                  </p>
                  &nbsp;
                  <p>
                    2002년부터 시행될 계약임용제로 인해 교수들을 '일반노동자'보다도 더욱 고용불안을 겪게 될 것이다.
                  </p>
                  &nbsp;
                  <p>
                     그 이유는 첫째, 지금까지 정부가 나서서 한 직종의 모든 노동자들에게 '계약제'를 강제한 전례가 없었다는 점이다. 그러나 지금의 국립대학발전계획, 전문대발전방안 그리고 곧 발표될 사립대발전방안은 전체 교수의 비정규직화를 의미하는 것이다. 둘째, 교수들에게는 계약임용제 시행 시 불이익에 대응할 수 있는 조직인 노동조합의 건설조차 법적으로 제한하고 있다는 점이다.
                  </p>
                  &nbsp;
                  <p>
                     최근 교육인적자원부는 "계약임용제는 신규임용 교수에게만 적용하겠다, 정년보장 교수는 대학의 자율적으로 결정하도록 하겠다"고 밝힌바 있으나 이는 '계약임용제'를 핵심으로 하는 '국립대발전계획'을 철회하지 않는 한 큰 의미는 없는 것이다. 우리는 교수경쟁력 제고를 시행목적으로 했던 교수재임용제가 비판적 교수들을 통제하는 수단으로 사학재단에 무소불위의 힘을 주었던 점을 잘 알고 있다. 즉 계약임용제가 시행되면 사립대에서 무분별한 시행에 따른 폐해가 클 것이라는 점은 불보듯 뻔한 일이다. 또 신규임용 교수에게만 적용된다고 하더라도 이는 대학교수의 계약직 비율을 지속적으로 늘려가겠다는 것 이상의 의미도 아닌 것이며 장기적으로는 교수사회의 분열, 그리고 해체의 위기를 가져올 것이다.
                  </p>
              </td>
            </tr>
            <tr>
              <th class="propel-table">3. 대학의 총체적 위기를 극복하기 위한 대학개혁 주체 형성의 필요성</th>
            </tr>
            <tr>
              <td>
                <p>
                  지금까지의 대학·교육정책은 교육관료와 일부 교육전문가, 그리고 사학재단의 영향하에 재단되어 왔고 이로 인해 우리 대학은 총체적 위기에 직면하게 되었다. 이를 극복하기 위해서는 대학주체인 교수가 올바른 교육·대학정책 수립에 참여해야 한다. 따라서 올바른 대학정책의 수립에 교수들이 조직적으로 참여할 수 있고 법적으로 그 협상력을 인정받을 수 있는 교수노동조합의 건설이 요구되고 있는 것이다.
                </p>
                &nbsp;
                <p>
                  전국교수노조(준)은  국교협, 사교련, 전교련, 민교협, 전국대학교수회, 학술단체협의회 그리고 교육운동단체와 함께 올바른 대학개혁과 교수노동기본권 보장을 위한 활동을 전개해 나갈 것이다.
                </p>
              </td>
            </tr>
          </table>
        </div>
        
        
          <div class="trace-box">
          <div class="propel-text">
            <h3>전국교수노동조합 발자취</h3>
          </div>
          	<div class="tracetitle" style="width: 100%; border-bottom: 1px solid #d8d8d8;" >
          	<br>
          	<p>▶ 2001. 11  전국교수노동조합 창립 대의원대회 및 출범</p><br>
          	<p>▶ 2019년   현재 제10기 위원장단 활동 중</p>
          	<br>		
          	</div>
          	
          	<div class="trace_content">
          	<br><br>
          		<p>▶ 2001. 국립대학발전계획 철회를 위한 대학구성원 결의대회 및 전국교수대회 개최</p><br>
          		<p>▶ 2001. 사학비리 백서 발간</p><br>
          		<p>▶ 2002. 공직사회 및 대학사회 개혁과 공무원 ․교수 노동기본권 쟁취를 위한 공동대책위원회 확대 결성</p><br>
          		<p>▶ 2002. 대학의 공공성 쟁취와 교수계약 ․연봉제 철폐를 위한 전국교수대회 개최</p><br>
          		<p>▶ 2002. 대학비리 고발센터 발족</p><br>
          		<p>▶ 2002. WTO교육개방저지 공동투쟁본부 참여</p><br>
          		<p>▶ 2005. 민주적 사립학교법 개정과 올바른 대학개혁 쟁취를 위한 전국교수 1000km 대장정</p><br>
          		<p>▶ 2005. 교수노조 합법화를 위한 설립신고서 제출</p><br>
          		<p>▶ 2005. 국립대법인화 저지, 사학법 개정, 교수노조 합법화, 비정규직법안 개악 저지를 위한 전국교수 천막농성</p><br>
          		<p>▶ 2006. 교수노조 정책자료집 ‘우리대학, 절망에서 희망으로’ 출판 기념회</p><br>
          		<p>▶ 2007. 국립대법인화 입법저지를 위한 지식인 선언</p><br>
          		<p>▶ 2008. 등록금 후불제 가두 서명전 - 혜화동</p><br>
          		<p>▶ 2009. 비리사학 고발 교수노조 연속 기자회견</p><br>
          		<p>▶ 2010. ‘학자금대출제한대학 명단발표의 문제점’ 국회 토론회</p><br>
          		<p>▶ 2012. 총대선을 위한 교수학술단체 및 교육운동단체 대학개혁정책 발표 </p><br>
          		<p>▶ 2013. 국정원 불법선거개입 시국선언 참여 및 국정원 앞 교수연구자 시국대회 </p><br>
          		<p>▶ 2014. 대학공공성 강화를 위한 전국대학구조조정 공동대책위원회 출범</p><br>
          		<p>▶ 2014. 일방적 대학구조조정 저지와 대학공공성 강화를 위한 교육주체 결의대회</p><br>
          		<p>▶ 2015. 교수노조 설립신고서 고용노동부 반려 후 행정소송(위헌제청)</p><br>
          		<p>▶ 2016. 박근혜 국가파괴 행위에 대한 사죄와 하야를 촉구하는 전국교수연구자 시국선언</p><br>
          		<p>▶ 2017. 공영형사립대 추진</p><br>
          		<p>▶ 2018. 헌법불합치 결정과 2020년 3월까지 교원노조법 개정 명령</p><br>
          		<p>▶ 지속적인 부당한 교권탄압에 대한 적극대응 및 구제</p><br>
          	
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

</body>
</html>