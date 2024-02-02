<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내과 의료용품 관리 페이지</title>

</head>
<body>
<h1>내과 의료용품 관리 페이지</h1>
<div class="main">
	<div>
		관리 일자 <input type="date" id="date" name="date">
		<input type="hidden" id="name" value="LeeJooHoon">
		<table border="1" >
			<tbody id="test_tbody">
				<thead>
					<tr>
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
	
	<div>
	<button type="button" id="consume" >사용기록추가</button>
	<button type="button" id="request">구매요청</button>
	</div>





</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../../resources/js/Jun/management.js"></script>
</body>

</html>