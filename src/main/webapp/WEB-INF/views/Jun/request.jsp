<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구입 요청</title>
</head>
<body>
${list}
	<table border="1">
		<tr>
			<td>의료용품 코드</td>
			<td>의료용품명</td>
			<td>공급회사명</td>
			<td>규격</td>
			<td>단위</td>

		
		</tr>
		<c:forEach items="${list}" var="alist">
		<tr>
			<td>${alist.medical_supply_code}</td>
			<td>${alist.medical_supplies_name}</td>
			<td>${alist.standard}</td>
			<td>${alist.unit}</td>
			<td>${alist.safety_inventory_quantuty}</td>
		</tr>
		</c:forEach>

	</table>
</body>
</html>