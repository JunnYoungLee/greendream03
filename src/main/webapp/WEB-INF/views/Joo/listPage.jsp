<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 요청 리스트</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<h4>구매 요청 확인</h4>
<form action="list" method="get">
<table border="1">
	<tr>
		<td>구분</td>
		<td>No</td>
		<td>부서</td>
		<td>품번</td>
		<td>품명</td>
		<td>규격</td>
		<td>단위</td>
		<td>회사명</td>
		<td>단가</td>
		<td>현재고량</td>
		<td>안전재고량</td>
		<td>발주량</td>
		<td>담당자</td>
		<td>요청일</td>
		<td>특이사항</td>
		<td>진행상태</td>
	</tr>
	<c:forEach items="${purchaseList}" var="purchaseList" varStatus="abc">
	<tr>
		<td><input type="checkbox" name="checkList" value="${purchaseList.rno}" id="aa"></td>
		<td>${abc.count}</td>
		<td>${purchaseList.dept}</td>
		<td>${purchaseList.medical_supply_code}</td>
		<td>${purchaseList.medical_supplies_name}</td>
		<td>${purchaseList.standard}</td>
		<td>${purchaseList.unit}</td>
		<td>${purchaseList.supplier}</td>
		<td>${purchaseList.unit_price}</td>
		<td>${purchaseList.current_quantity}</td>
		<td>${purchaseList.safety_inventory_quantuty}</td>
		<td>${purchaseList.request_quantity}</td>
		<td>${purchaseList.person_in_charge}</td>
		<td>${purchaseList.date}</td>
		<td>${purchaseList.special_note}</td>
		<td>${purchaseList.progress_status}</td>
	</tr>
	</c:forEach>
</table>
</form>
	
	<button type="submit" name="add"> 발주 </button>
	
	<div id="result"></div>
	
<script>

$(document).ready(function(){
	
	$(document).on("click", "button[name='add']",function(){
		
		// 전체 check box 개수
		$("input[name='checkList']:checked").length;

		// 선택된 check box 개수
		$("input[name='checkList']:checked").length;
		
		let chk_arr = [];

		// 1.
		$("input[name='checkList']:checked").each(function(){
			chk_arr.push($(this).val()); // push: 배열에 값 삽입
		});
		
		console.log(chk_arr);

		
	
	 //출력
	console.log(chk_arr);
	document.getElementById('result').innerText = chk_arr;
	window.location = "http://localhost:8080/A?chk_arr="+chk_arr+"";
	alert("발주신청페이지");
	
	});
});

</script>
</body>
</html>