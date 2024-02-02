<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 요청</title>
</head>
<body>
<input type="hidden" id="date" value="${sessionScope.date}">
<input type="hidden" id="name" value="${sessionScope.name}">
<input type="hidden" id="dept" value="${inList[0].dept}">
	<table border="1" id="consume">
		<thead>
			<tr>
				<td><p>의료용품 코드</p></td>
				<td><p>의료용품 명</p></td>
				<td><p>규격</p></td>
				<td><p>단위</p></td>
				<td><p>공급회사</p></td>
				<td><p>재고량</p></td>
				<td><p>안전재고량</p></td>
				<td><p>요청수량</p></td>
				<td><p>특이사항</p></td>
				
			</tr>
		</thead>
		<c:forEach items="${inList}" var="list" varStatus="a">
			<tr >
				<td>${list.medical_supply_code}</td>
				<td>${list.medical_supplies_name}</td>
				<td>${list.standard}</td>
				<td>${list.unit}</td>
				<td>${list.supplier}</td>
				<td>${list.current_quantity}</td>
				<td>${list.safety_inventory_quantuty}</td>
				<td><input type="text" id="request" value="0"></td>
				<td><input type="text" id="special_note" ></td>
				<td style="display: none;"><input type="hidden" id="unit_price" value="${list.unit_price}"></td>
			</tr>
		</c:forEach>
	</table>
	
	<input type="button"id="submit" value="적용">
		
</body>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../../resources/js/Jun/request.js"></script>

</html>