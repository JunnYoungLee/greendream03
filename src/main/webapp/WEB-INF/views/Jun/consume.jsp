<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시용량</title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

	<!-- inventoryPage.css -->
	<link href="/../../resources/css/Joo/consumePage.css" rel="stylesheet">

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

<h3> 사용량 조절 </h3>
<div class="main">
	<div>
	<input type="hidden" id="date" >
	<input type="hidden" id="name" value="${sessionScope.yldto.name}">
	<input type="hidden" id="dept" value="${inList[0].dept}">
		<table border="1" id="consume" class="table table-bordered table-sm">
			<thead>
				<tr>
					<td><p>의료용품 코드</p></td>
					<td><p>의료용품 명</p></td>
					<td><p>규격</p></td>
					<td><p>단위</p></td>
					<td><p>재고량</p></td>
					<td><p>안전재고량</p></td>
					<td><p>사용량</p></td>
					
				</tr>
			</thead>
			<c:forEach items="${inList}" var="list" varStatus="a">
				<tr >
					<td>${list.medical_supply_code}</td>
					<td>${list.medical_supplies_name}</td>
					<td>${list.standard}</td>
					<td>${list.unit}</td>
					<td>${list.current_quantity}</td>
					<td>${list.safety_inventory_quantuty}</td>
					<td><input type="text" id="con[${a.index}]" value="0"></td>
				</tr>
			</c:forEach>
		</table>
	</div>	
	
		<div class="buttonContainer">
		<input type="button"id="submit" value="적용" class="btn btn-outline-dark">
		</div>
		
</div>	
</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

<script type="text/javascript" src="/../../resources/js/Jun/consume2.js"></script>

</html>

