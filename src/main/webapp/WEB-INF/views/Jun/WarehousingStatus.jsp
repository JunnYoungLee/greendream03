<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입고 현황</title>
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

<h3> 입고 현황 </h3>
<div class="main">
	<table border="1" class="table table-bordered table-sm" id="tableContainer">
		<tr>
			<td>부서</td>
			<td>품번</td>
			<td>품명</td>
			<td>규격</td>
			<td>단위</td>
			<td>회사명</td>
			<td>단가</td>
			<td>발주 수량</td>
			<td>부가세</td>
			<td>총액</td>
			<td>담당자</td>
			<td>특이 사항</td>
			<td>진행 상태</td>
			<td>차량 번호</td>
		</tr>
	<c:forEach items="${warehousing}" var="warehousing">
		<tr>
			<td>${warehousing.dept}</td>
			<td>${warehousing.medical_supply_code}</td>
			<td>${warehousing.medical_supplies_name}</td>
			<td>${warehousing.standard}</td>
			<td>${warehousing.unit}</td>
			<td>${warehousing.supplier}</td>
			<td>${warehousing.unit_price}</td>
			<td>${warehousing.order_quantity}</td>
			<td>${warehousing.surtax}</td>
			<td>${warehousing.total_price}</td>
			<td>${warehousing.person_in_charge}</td>
			<td>${warehousing.special_note}</td>
			<td>${warehousing.progress_status}</td>
			<td>${warehousing.car_Num}</td>
		</tr>
	</c:forEach>
	</table>

	<div class="buttonContainer">
	<button type="button" id="delivery"  class="btn btn-outline-dark" onclick="location.href='delivery'">배송 차량 위치</button>
	</div>	
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52d3ec4ed67af68f08fbd6870b95ad2a"></script>
<script type="text/javascript" src="/../../resources/js/Jun/WarehousingStatus.js"></script>
</body>
</html>