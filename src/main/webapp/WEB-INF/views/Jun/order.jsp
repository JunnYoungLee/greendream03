<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료용품 발주 페이지</title>

</head>
<body>
<h1>의료용품 발주 페이지</h1>
<div class="main">
	<select id="tmpSelect">
	   <option value="A">전체보기</option>
	   <option value="B">내과</option>
	   <option value="C">외과</option>
	</select>
	<select id="tmpSelect">
	   <option value="A">전체보기</option>
	   <option value="B">그린제약</option>
	   <option value="C">드림제약</option>
	</select>
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
						<td><input type="checkbox" name="ckb"></td>
						<td>${list.medical_supply_code}</td>
						<td>${list.medical_supplies_name}</td>
						<td>${list.standard}</td>
						<td>${list.unit}</td>
						<td>${list.supplier}</td>
						<td>${list.unit_price}</td>
						<td>${list.request_quantity}</td>
						<td>${list.supply_price}</td>
						<td>${list.surtax}</td>
						<td>${list.total_price}</td>
						<td>담당자</td>
						<td>입고날짜</td>
						<td>${list.special_note}</td>
						<td>${list.progress_status}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="aaa"></div>

	<div>
	<button type="button" id="order" >발주</button>
	<button type="button" id="delete" >삭제</button>
	</div>





</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../../resources/js/Jun/oder.js"></script>
</body>

</html>