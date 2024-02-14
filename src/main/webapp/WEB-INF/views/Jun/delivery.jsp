<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배송 차량 위치</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	
	<!-- adminPage.css -->
	<link href="/../../resources/css/Joo/managementPage.css" rel="stylesheet">
</head>
<body>

<div class="headers">
<!-- 공통 헤더 -->
<jsp:include page = "../Joo/headers.jsp" ></jsp:include>
</div>

<div class="sidebars">
<!-- 메뉴 사이드 바 -->
<jsp:include page = "../Joo/sidebars.jsp" ></jsp:include>
</div>

<h3> 배송 차량 위치</h3>
<div class="main">
<div id="tableContainer" style="padding-left: 7%;">
	<input type="hidden" id="latitudeA" value="${gpsA.latitude}">
	<input type="hidden" id="longitudeA" value="${gpsA.longitude}">
	<input type="hidden" id="latitudeB" value="${gpsB.latitude}">
	<input type="hidden" id="longitudeB" value="${gpsB.longitude}">
	<div id="map" style="width:1200px;height:500px; "></div>
</div>
<div style="position: relative;text-align: center;margin-top: 2%;">
<button type="button" id="WarehousingStatus"  class="btn btn-outline-dark"  onclick="location.href='WarehousingStatus'">입고현황</button>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52d3ec4ed67af68f08fbd6870b95ad2a"></script>
<script type="text/javascript" src="/../../resources/js/Jun/delivery.js"></script>
</body>
</html>