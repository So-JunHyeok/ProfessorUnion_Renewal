<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<sec:authorize access="hasRole('ROLE_USER')" var="uerlevel"></sec:authorize>

  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>전국교수노동조합</title>
</head>
  <link rel="stylesheet" href="resources/css/question.css">
  <link rel="stylesheet" href="resources/css/reset.css">
  <link rel="stylesheet" href="resources/css/branch.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
  <script type ="text/javascript" src="resources/js/jquery-3.3.1.min.js" charset="UTF-8"></script>
  <script src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
    $(function(){
    var sBtn = $(".professor-kinds ul > li");
    sBtn.find("a").click(function(){
    sBtn.removeClass("active");
    $(this).parent().addClass("active");
    })
    });
    
    $(document).ready(function(){
//    	alert("실행")
    	var page = ${pageInfo}
    	var k1 = document.getElementById("k1");
    	var k2 = document.getElementById("k2");
    	var k3 = document.getElementById("k3");
    	var k4 = document.getElementById("k4");
    	var k5 = document.getElementById("k5");
    	var k6 = document.getElementById("k6");
    	var k7 = document.getElementById("k7");
    	var k8 = document.getElementById("k8");
  	var k8 = document.getElementById("k9");

    	if(page == 1)
    		{
 				k1.style.color= '#23539b';		
    		}
    	else if(page == 2){
    			k2.style.color= '#23539b';	
    		}
    	else if(page == 3){
    			k3.style.color= '#23539b';
    	}
    	else if(page == 4){
    			k4.style.color= '#23539b';
    	}
    	else if(page == 5){
    			k5.style.color= '#23539b';
    	}
    	else if(page == 6){
    			k6.style.color= '#23539b';
    	}
    	else if(page == 7){
    			k7.style.color= '#23539b';
    	}
    	else if(page == 8){
    			k8.style.color= '#23539b';
    	}
    	else if(page == 9){
    			k9.style.color= '#23539b';
    	}    	    	
    });
    
    $(document).ready(function(){
		$('.question-list-content').hide();
		$('.question-list').click(function(e){
			$(this.nextElementSibling).toggle();
		})
	})
</script>

<body>
<div id="wrap">
   <jsp:include page="/resources/header.jsp"></jsp:include>
  <div id="contents">
    <div class="contents-container">
      	<jsp:include page="/resources/sidebar.jsp"></jsp:include>
      <div class="professor-contents">
        <div class="professor-top">
          <h2>교수노조 안내</h2>
          
            <div class="professor-button">
              <button id="guide" onclick="location.href='branchboardGuidance'" style="width: 20%; height: 30px; background-color: #fff;">안내</button>
              <button id="branch" onclick="location.href='branchboardlist?pageInfo=1&side=branchboardlist'" style=" width: 20%; height: 30px; color: #fff; background-color: #23539b;">지부지회</button>
              <input type="hidden" id="pageInfo" value="${pageInfo}" style="color: #23539b;">
          </div>
        </div>
        
                  <div class="question-bottom">
		            <div class=".bottom-title_to">
		              <h3>지회 설립과 관련된 Q&A</h3>
		            </div>
		            <div class="bottom-contents">
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">복수노조 설립 가능성은?</p>
		                </div>
		              </div>
		              <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 복수노조 설립은 가능하나 현재의 교원노조법 상 특별시·광역시·도·특별자치도 단위 또는 전국 단위로만 노동조합을 설립할 수 있음.<br>
		              	<br>
		              	<p>- 교원노동조합 설립 및 운영 등에 관한 법률(약칭 교원노조법) 제4조(노동조합의 설립)</p> 
		              	<p>&nbsp;&nbsp;① 교원은 특별시·광역시·도·특별자치도(이하 “시·도”라    한다) 단위 또는 전국 단위로만 노동조합을 설립할 수 있다.<br>
  						   &nbsp;&nbsp;② 노동조합을 설립하려는 사람은 고용노동부장관에게 설립신고서를 제출하여야 한다.</p>
  						 <br>
  						 <p>- 현재는 전국 단위로 전국교수노동조합이 있으므로 전국교수노동조합이 설립신고를 하고, 시·도별 지부와 각 대학별 지회를 두면 됨</p>
  						 <p>- 지회 설립 시에는 학내에 기존 조합원이 있는지 확인하고 함께 논의하며 설립하는 것이 필요 </p>  
		              	
		              	
		              	
		              	 </div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">어용노조 설립 가능성은?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;">  
		              	<p>- 개별 조합원으로 가입합니다. / 공개 비공개 가입 모두 가능합니다.</p> 
		              	<br>
		              	<p>- 하지만 어용노조 역시 교원노조법상 특별시·광역시·도·특별자치도 단위 또는 전국단위로만 노동조합을 설립할 수 있음.</p> 
		              	<br>
		              	<p>- 엄밀히 말해 노동조합법 제2조(정의)에 따르면 어용노조는 노조라고 할 수 없음.</p> 
		              	<br>
		              	<p><b>노동조합 및 노동관계조정법 </b></p>
		              	<br>
		              	<p>&nbsp;&nbsp;-제2조(정의) 제4호 “......다만, 다음 각목의 1에 해당하는 경우에는 노동조합으로 보지    아니한다.</p>
		              	<br>
		              	<p>&nbsp;&nbsp;-가. 사용자 또는 항상 그의 이익을 대표하여 행동하는 자의 참가를 허용하는 경우......</p>
		              	
		              	
		              	
		              	
		              	
		              	</div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">지회 설립은?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 1) 현재 학내 지회 설립은 조합원 10명 이상을 원칙으로 하되, 각 대학 상황을 고려함.</p>
		              	<br>
		              	<p>- 2) 취업규칙 불이익 변경에 대응할 때를 비롯해서 근로자의 과반수 이상으로 조직된 노동조합이 있는지가 중요한 관건이 되는 경우가 있으므로 가급적 많은 구성원으로 지회를 설립하는 것이 필요함.</p>
		              	<br>
		              	<p>- 3) 조합원 가입은 본조에 하고, 지회 설립 문의가 들어오면 지부에 알려 지부 총회(또는 대의원대회)를 거치도록 함.</p>
		              	  
		              	
		              	
		              	
		              	
		              	</div>
		              </div>
		              <div class="question-list">
		                <div class="question-icon">
		                  <i class="far fa-question-circle"></i>
		                </div>
		                <div class="question-text">
		                  <p style="font-size: 15px; margin-left: 15px;">지회장은 선출하는 것인지?</p>
		                </div>
		              </div>
		                <div class="question-list-content">
		              	<div style="margin-left: 50px;"> 
		              	<p>- 선거관리 규정 ‘제5장 지부장 및 지회장 선거’ 제20조(입후보)와 제21조(선거일) 참고 (해당 규정에 대해 추후 의견 수렴하여 개정할 수 있음).</p>
		              	<br>
		              	<p>- 지회 운영 규정 가이드라인을 마련하여 제시하고 함</p>
		              	 </div>
		              </div>
		        </div>
        
        <div class="professor-center">
          <div class="professor-kinds">
            <ul>
              <li><a id="k1" href="branchboardlist?pageInfo=1&side=branchboardlist" class="kinds">서울/제주</a></li>
              <li><a id="k2" href="branchboardlist?pageInfo=2&side=branchboardlist" class="kinds">경기/인천</a></li>
              <li><a id="k3" href="branchboardlist?pageInfo=3&side=branchboardlist" class="kinds">대전/충남</a></li>
              <li><a id="k4" href="branchboardlist?pageInfo=4&side=branchboardlist" class="kinds">대구/경북</a></li>
              <li><a id="k5" href="branchboardlist?pageInfo=5&side=branchboardlist" class="kinds">광주/전남</a></li>
              <li><a id="k6" href="branchboardlist?pageInfo=6&side=branchboardlist" class="kinds">부울경</a></li>
              <li><a id="k7" href="branchboardlist?pageInfo=7&side=branchboardlist" class="kinds">충북</a></li>
              <li><a id="k8" href="branchboardlist?pageInfo=8&side=branchboardlist" class="kinds">전북</a></li>
 	  <li><a id="k9" href="branchboardlist?pageInfo=9&side=branchboardlist" class="kinds">강원</a></li>
            </ul>
          </div>
          <div class="professor-box">
            <table class="branchlist">
            	<tr> 
              		<th>번호</th>
              		<th>지부</th>
              		<th>이름</th>
             		<th>직책</th>
              		<th>대학</th>
              		<th>Email</th>
              		<sec:authorize access="hasRole('ROLE_ADMIN')" var="b">
              		<th>수정</th>
              		<th>삭제</th>
					</sec:authorize>
              		<th style="display: none;">지역번호</th>
            	</tr>
            	<c:forEach items="${list}" var="bto" varStatus="s">
              	<tr>
                	<td>${(totalcount-s.index)-((page-1)*10)}</td>
	  		        <td>${bto.branchArea}</td>
	  		        <td>${bto.branchName}</td>
	  		        <td>${bto.branchPosition}</td>
	  		        <td>${bto.branchUni}</td>
	  		        <td>${bto.branchMail}</td>
	  		        <sec:authorize access="hasRole('ROLE_ADMIN')" var="b">
	  		        <td>
	  		        	<a class="modify-button" href="branchboardmodify?branchNum=${bto.branchNum}"><i class="fas fa-edit"></i></a>
	  		        </td>
	  		        <td>
	  		        	<a class="delete-button" href="branchboarddelete?branchNum=${bto.branchNum}&pageInfo=${pageInfo}"><i class="fas fa-trash-alt"></i></a>
	  		        </td>
	  		        <td style="display: none;">${bto.branchKind}</td>
	  		        </sec:authorize>
              	</tr>
            </c:forEach>
          </table>
          
          <div class="paging-button">  
          	<div class="paging">
          	  <div class="paging-box"> 
          		<ul>
          			<li>
          				<c:if test="${page>1}">
        					<a href="branchboardlist?page=1&pageInfo=${pageInfo}" style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;"><i class="fas fa-angle-double-left"></i></a>
        				</c:if>
        	
        				<c:if test="${page>1}">
        					<a href="branchboardlist?page=${page-1}&pageInfo=${pageInfo}" style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;"><i class="fas fa-angle-left"></i></a>	<!-- 이전페이지 -->
        				</c:if>
        	
        				<c:forEach begin="${startPage}" end="${endPage}" var="d">	<!--현재 페이지-->
        					<a href="branchboardlist?page=${d}&pageInfo=${pageInfo}" style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;">${d}</a>&nbsp;&nbsp;
        				</c:forEach>       	        	
			
        				<c:if test="${page<totalpage}">
        					<a href="branchboardlist?page=${page+1}&pageInfo=${pageInfo}" style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;"><i class="fas fa-angle-right"></i></a>	<!-- 다음페이지 -->
        				</c:if>

        				<c:if test="${endPage<totalpage}">
        					<a href="branchboardlist?page=${totalpage}&pageInfo=${pageInfo}" style="border: 1px solid #0195ea; font-weight: bold; color: #0195ea;"><i class="fas fa-angle-double-right"></i></a>
        				</c:if>
        			</li>
        		</ul>
        	  </div>
          	</div>
          	<div class="write-button1">
          	<sec:authorize access="hasRole('ROLE_ADMIN')" var="b">
          		<button class="list-button" onclick="location.href='branchboardwrite?boardName=branchboardwrite&pageInfo=${pageInfo}'">작성하기</button>
          		</sec:authorize>
          	</div>
          </div>
         </div>

        </div>
       
        
        

      </div>
    </div>
  </div>

    <div id="footer">
      <div class="container">
        <div class="footer-contents">
 <p style="font-size: 14px;">08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>