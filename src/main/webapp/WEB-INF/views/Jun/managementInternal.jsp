<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="main">
	<div>
		<table border="1">
			<tr>
				<td><input type="checkbox" /></td>
				<td><p>품번</p></td>
				<td><p>품명</p></td>
				<td><p>규격</p></td>
				<td><p>단위</p></td>
				<td><p>재고량</p></td>
				<td><p>안전재고량</p></td>
				
			</tr>
			<c:forEach items="${miList}" var="list">
		<tr>
			<td><input type="checkbox" /></td>
			<td>${list.medical_supply_code}</td>
			<td>${list.medical_supplies_name}</td>
			<td>${list.standard}</td>
			<td>${list.unit}</td>
			<td>${list.current_quantity}</td>
			<td>${list.safety_inventory_quantuty}</td>
		</tr>
		</c:forEach>
		</table>
	</div>
	
	<div>
	<button type="button" onclick="use()" >사용기록추가</button>
	<button type="button">신청</button>
	<button type="button">추가</button>
	<button type="button">삭제</button>
	</div>





</div>

</body>
<script type="text/javascript" src="../../resources/js/managementInternal.js"></script>
</html>