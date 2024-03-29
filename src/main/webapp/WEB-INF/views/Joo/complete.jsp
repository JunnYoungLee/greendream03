<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 발주 완료 목록 </title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
	
	<!-- adminPage.css -->
	<link href="/../../resources/css/Joo/storeList.css" rel="stylesheet">
	
</head>
<body>

<div class="headers">
<!-- 공통 헤더 -->
<jsp:include page = "headers.jsp" ></jsp:include>
</div>
<div class="sidebars">
<!-- 메뉴 사이드 바 -->
<jsp:include page = "sidebars.jsp" ></jsp:include>
</div>
	
<h3> 발주 완료 목록 </h3>

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
		</tr>
	<c:forEach items="${complete}" var="complete">
		<tr>
			<td>${complete.dept}</td>
			<td>${complete.medical_supply_code}</td>
			<td>${complete.medical_supplies_name}</td>
			<td>${complete.standard}</td>
			<td>${complete.unit}</td>
			<td>${complete.supplier}</td>
			<td><fmt:formatNumber value="${complete.unit_price}" pattern="#,###" /></td>
			<td><fmt:formatNumber value="${complete.order_quantity}" pattern="#,###" /></td>
			<td><fmt:formatNumber value="${complete.surtax}" pattern="#,###" /></td>
			<td><fmt:formatNumber value="${complete.total_price}" pattern="#,###" /></td>
			<td>${complete.person_in_charge}</td>
			<td></td>
			<td>${complete.progress_status}</td>
		</tr>
	</c:forEach>
	</table>
<br><br>
<div>
	<form action="complete">
	<input type="hidden" name="pageNum" value="${paging.cri.pageNum}">
	<input type="hidden" name="amount" value="${paging.cri.pageNum}">
	</form>
	
	<c:if test="${paging.prev}">
		<a href="complete?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">이전</a>
	</c:if>
	
	<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
		<a href="complete?pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
	</c:forEach>
	
	<c:if test="${paging.next}">
		<a href="complete?pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">다음</a>
	</c:if>
</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<!-- sidebars.js -->
<script src="/../../resources/js/Joo/sidebars.js"></script>

</body>
</html>