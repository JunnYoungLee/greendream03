<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시용량</title>

</head>
<body>
사용량 ${sessionScope}
<input type="hidden" id="date" value="${sessionScope.date}">
<input type="hidden" id="name" value="${sessionScope.name}">
<input type="hidden" id="dept" value="${inList[0].dept}">
	<table border="1" id="consume">
		<thead>
			<tr>
				<td><p>품번</p></td>
				<td><p>품명</p></td>
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
				<td><input type="hidden" value="${list.dept}"></td>
			</tr>
		</c:forEach>
	</table>
	
	<input type="button"id="submit" value="적용">
		
</body>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../../resources/js/Jun/useInternal.js"></script>

</html>

