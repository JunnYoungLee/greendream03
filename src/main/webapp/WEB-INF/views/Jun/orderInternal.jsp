<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내과 의료용품 발주 페이지</title>

</head>
<body>
<h1>내과 의료용품 발주 페이지</h1>
<div class="main">
	<div>
		<input type="date" id="date" name="date">
		<input type="hidden" id="name" value="LeeJooHoon">
		<table border="1" >
			<tbody id="test_tbody">
				<thead>
					<tr>
						<td><p><input type="checkbox"></p></td>
						<td><p>의료용품 코드</p></td>
						<td><p>의료용품 명</p></td>
						<td><p>규격</p></td>
						<td><p>단위</p></td>
						<td><p>공급회사명</p></td>
						<td><p>단가</p></td>
						<td><p>발주수량</p></td>
						<td><p>공급가액</p></td>
						<td><p>부가세</p></td>
						<td><p>총액</p></td>
						<td><p>담당자</p></td>
						<td><p>입고 날짜</p></td>
						<td><p>특이사항</p></td>
						<td><p>진행상태</p></td>
						
					</tr>
				</thead>
				<c:forEach items="${inList}" var="list">
					<tr>
						<td><input type="checkbox"></td>
						<td>${list.medical_supply_code}</td>
						<td>${list.medical_supplies_name}</td>
						<td>${list.standard}</td>
						<td>${list.unit}</td>
						<td>${list.supplier}</td>
						<td>${list.unit_price}</td>
						<td>${list.request_quantity}</td>
						<td>supply_price</td>
						<td>surtax</td>
						<td>total_price</td>
						<td>담당자</td>
						<td>입고날짜</td>
						<td>${list.special_note}</td>
						<td>${list.progress_status}</td>
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
<script type="text/javascript" src="../../resources/js/Jun/managementInternal.js"></script>
</body>

</html>