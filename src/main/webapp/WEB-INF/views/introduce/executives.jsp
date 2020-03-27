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
  <link rel="stylesheet" href="resources/css/introduce/executives.css"> 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>
<div id="wrap">
 <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
     
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>

      <div class="executives-content">
        <div class="executives-title">
          <h2>임원소개</h2>
        </div>
        <div class="executives-box">
            <div class="introduce-box">
              <div class="introduce-img-box"> 
                <div class="introduce-img">
                  <img style="margin-top: 10px;" src="resources\img\introduce\introduce1.JPG">
                </div>
                <div class="introduce-name">
                  <h4 style="text-align: center; width: 75%;">홍성학위원장</h4>
                </div>
              </div>
              <div class="introduce-career">
                <div class="career-title">
                  <h4 style="margin-top: 5px;">주요경력</h4>
                </div>
                <div class="career-text">
                  <ul>
                    <li>
                      <p>2006.11. ~ 2011.12. 전국교권수호교수모임 공동대표</p>
                    </li>
                    <li>
                      <p>2007.4. ~ 2011.2. 전국교수노동조합 교권실장(4,5기)</p>
                    </li>
                    <li>
                      <p>2011.3. ~ 2013.2. 전국교수노동조합 부위원장(6기)</p>
                    </li>
                    <li>
                      <p>2012.2. ~ 2016.12. 충북참여연대 사회인권위원회 위원장</p>
                    </li>
                    <li>
                      <p>2012.5. ~ 2016.9.14. 충북공직자윤리위원회 위원</p>
                    </li>
                    <li>
                      <p>2013.3. ~ 2016.12. 전국교수노동조합 수석부위원장(7,8기)</p>
                    </li>
                    <li>
                      <p>2014.3. ~ 현재 충북지방노동위원회 공익위원(조정담당)</p>
                    </li>
                    <li>
                      <p>2014.9. ~ 2018.11. 충북인권위원회 위원장</p>
                    </li>
                    <li>
                      <p>2017.1. ~ 2018.12. 전국교수노동조합 위원장(9기)</p>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="introduce-university">
                <div class="university-title">
                  <h4 style="margin-top: 5px;">학교</h4>
                </div>
                <div class="university-text">
                  <p>충북보건과학대학교</p>
                </div>
              </div>
            </div>
            <div class="introduce-box" style="margin-top: 80px;">
              <div class="introduce-img-box">
                <div class="introduce-img">
                  <img style="margin-top: 10px;" src="resources/img/introduce/introduce2.JPG">
                </div> 
                <div class="introduce-name">
                  <h4>임재홍수석부위원장</h4>
                </div>
              </div>
              <div class="introduce-career">
                <div class="career-title">
                  <h4 style="margin-top: 5px;">주요경력</h4>
                </div>
                <div class="career-text">
                  <ul>
                    <li>
                      <p>2011.6. ~ 2013.2. 전국교수노동조합 정책기획실장</p>
                    </li>
                    <li>
                      <p>2013.3. ~ 현재 전국교수노동조합 (수석)부위원장</p>
                    </li>
                    <li>
                      <p>2015.6. ~ 2017.6 사학분쟁조정위원회 위원</p>
                    </li>
                    <li>
                      <p>2014.10. ~ 2018.8 국교련(거국련) 정책위원장</p>
                    </li>
                    <li>
                      <p>2016.11. ~ 현재 대학정책학회 학술위원장</p>
                    </li>
                    <li>
                      <p>2018.6.  ~ 현재  대학정책연구소 소장</p>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="introduce-university">
                <div class="university-title">
                  <h4 style="margin-top: 5px;">학교</h4>
                </div>
                <div class="university-text">
                  <p>한국방송통신대학교</p>
                </div>
              </div>
            </div>

            <div class="introduce-table">
              <h4>상임집행위원회</h4>
              <div class="standing_executives" style="display: flex;">
              <div class="executives_img" style="width: 150px; height:150px; ">
              	<img alt="" src="resources/img/main/123.png" style="width: 120px; height: 120px; margin-top: 30px;" >
              </div>
              <div class="executives_table">
              <table>
                <tr>
                  <th>직책</th>
                  <th>이름</th>
                  <th>학교</th>
                </tr>
                <tr>
                  <td>부위원장</td>
                  <td>안현효</td>
                  <td>대구대학교</td>
                </tr>
 	    <tr>
                  <td>부위원장</td>
                  <td>송주명</td>
                  <td>한신대학교</td>
                </tr>
	    <tr>
                  <td>사무처장</td>
                  <td>조권익</td>
                  <td>동덕여자대학교</td>
                </tr>
                <tr>
                  <td>정책실장</td>
                  <td>문병효</td>
                  <td>강원대학교</td>
                </tr>
                <tr>
                  <td>조직실장</td>
                  <td>선재원</td>
                  <td>평택대학교</td>
                </tr>
                <tr>
                  <td>교육선전실장</td>
                  <td>조경순</td>
                  <td>서일대학교</td>
                </tr>
              </table>
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
          <p>08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
      </div>
    </div>
  </div>
  </div>
</body>
</html>
