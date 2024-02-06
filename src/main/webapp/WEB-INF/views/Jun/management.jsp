<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내과 의료용품 관리 페이지</title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

	<!-- inventoryPage.css -->
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

<h3> 재고 조회 </h3>
<div class="main">
	<div>
		<!-- <div class="rightContainer"> 관리 일자 <input type="date" id="date" name="date"></div>
		<input type="hidden" id="name" value="LeeJooHoon"> -->
		<table border="1" class="table table-bordered table-sm" id="tableContainer">
			<tbody id="test_tbody">
				<thead>
					<tr>
						<td><p>부서</p></td>
						<td><p>의료용품 코드</p></td>
						<td><p>의료용품 명</p></td>
						<td><p>규격</p></td>
						<td><p>단위</p></td>
						<td><p>재고량</p></td>
						<td><p>안전재고량</p></td>
						
					</tr>
				</thead>
				<c:forEach items="${inList}" var="list">
					<tr>
						<td>${list.dept}</td>
						<td>${list.medical_supply_code}</td>
						<td>${list.medical_supplies_name}</td>
						<td>${list.standard}</td>
						<td>${list.unit}</td>
						<td>${list.current_quantity}</td>
						<td>${list.safety_inventory_quantuty}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div class="buttonContainer">
<c:if test="${sessionScope.yldto.dept ne '재무과'}">

<button type="button" id="consume"  class="btn btn-outline-dark">사용기록추가</button>
<button type="button" id="request" class="btn btn-outline-dark">구매요청</button>

</c:if>
	</div>





</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<script type="text/javascript" src="/../../resources/js/Jun/management2.js"></script>

</body>

</html>