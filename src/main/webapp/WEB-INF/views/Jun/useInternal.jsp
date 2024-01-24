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
사용량
	<table border="1">
			<tr>
				<td><p>품번</p></td>
				<td><p>품명</p></td>
				<td><p>규격</p></td>
				<td><p>단위</p></td>
				<td><p>재고량</p></td>
				<td><p>안전재고량</p></td>
				<td><p>사용량</p></td>
				
			</tr>
			<c:forEach items="${miList}" var="list" varStatus="a">
		<tr>
			<td id="aa${a.index}">${list.medical_supply_code}</td>
			<td>${list.medical_supplies_name}</td>
			<td>${list.standard}</td>
			<td>${list.unit}</td>
			<td onclick="a('${list.medical_supplies_name}')">${list.current_quantity}</td>
			<td>${list.safety_inventory_quantuty}</td>
			<td><input type="text" id=""></td>
		</tr>
		</c:forEach>
		</table>
</body>

<script>
function a(name){
	alert(name);
}
</script>
</html>

