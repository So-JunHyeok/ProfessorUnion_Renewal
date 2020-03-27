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
  <link rel="stylesheet" href="resources/css/introduce/map.css"> 
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
</head>
<body>

<div id="wrap">
  
 <jsp:include page="/resources/header.jsp"></jsp:include>

  <div id="contents">
    <div class="contents-container">
      
 	<jsp:include page="/resources/sidebar.jsp"></jsp:include>

      <div class="map-content">
        <div class="map-title">
          <h2>오시는길</h2>
        </div>
        <div class="map-box">
          <div class="map-img">
            <img src="resources/img/introduce/map.png">
          </div>
        </div>

        <div class="map-traffic">
          <div class="map-subway">
            <div class="subway-icon">
              <i class="fas fa-subway"></i>
              <p>지하철 이용안내</p>
            </div>
            <div class="subway-text">
              <ul>
                <li>2호선 낙성대역 3번 출구 3분</li>
              </ul>
            </div>
          </div>
          <div class="map-bus">
            <div class="bus-icon">
              <i class="fas fa-bus"></i>
              <p>버스 이용안내</p>
            </div>
            <div class="bus-text">
              <div class="ss">
              <ul>
                <li>서울대역 방면</li>
              </ul>
              <p>서울인헌미술고 인헌중고 하차</p>
              <br>
              <ul>
                <li>사당역 방면</li>
              </ul>
              <p>낙성대입구 하차</p>
              </div>
              <div class="bus_number">
              <ul>
                <li>지선 버스</li>
              </ul>
              <p>
                5413, 5524, 5528, 5530, 8541<br>
              </p>
              <br>
              <ul>
                <li>간선 버스</li>
              </ul>
              <p>
                461, 641, 643, N15, N61<br>
                5413, 5524, 5528, 5530, 8541
              </p>
              </div>
            </div>
          </div>
        </div>
        <div class="map-addr">
        <ul>
          <li><b>주소 :</b>서울시 관악구 봉천로 594-1(2층)전국교수노동조합</li>
          <li><b>전화 :</b> 02-871-8706 &nbsp; <b>팩스 :</b> 02-6007-1415&nbsp; <b>홈페이지 :</b> www.kpu.or.kr </li>
        </ul>
        </div>
      </div>
    </div>
  </div>


  <div id="footer">
    <div class="container">
      <div class="footer-contents">
          <p style="color:#BDBDBD;">08793 서울시 관악구 봉천로 594-1(2층)  TEL : 02-871-8706 &nbsp; FAX : 02-6007-1415 &nbsp; E-mail : kpunion@gmail.com &nbsp;  COPYRIGHT ⓒ 2018 전국교수노동조합(KOREA PROFFESSORS UNION) ALL RIGHTS RESEVED</p>
      </div>
    </div>
  </div>
  </div>
</body>
</html>
