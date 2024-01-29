<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 거래명세서 </title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<!-- transaction.css -->
	<link href="/../../resources/css/Joo/transactionPage.css" rel="stylesheet">

</head>
<body>

<div class="main">
	<div>
	<table class="table table-bordered table-sm" id="tableContainer">
	<c:forEach items="${supplyList}" var="supplyList" begin="1" end="1">

		<tr>
			<td colspan="8"><h1>거래명세서</h1></td>
		</tr>
		<tr>
			<td>발행일</td>
			<td>
				<c:set var="ymd" value="<%=new java.util.Date()%>" />
				<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" />
			</td>
			<td rowspan="5"><p></p></td>
			<td colspan="5">공급자</td>
		</tr>
		<tr>
			<td rowspan="2">부서명</td>
			<td rowspan="2"><input></td>
			<td>사업자번호</td>
			<td colspan="4">${supplyList.business_number}</td>
		</tr>
		<tr>
			<td>업체명</td>
			<td>${supplyList.supplier}</td>
			<td>담당자명</td>
			<td>${supplyList.supplier_person}</td>
		</tr>
		<tr>
			<td>발주담당자</td>
			<td>${supplyList.supplier_person}</td>
			<td>주소</td>
			<td colspan="3">${supplyList.location}</td>
		</tr>
		<tr>
			<td>총 합계</td>
			<td ><input></td>
			<td>전화</td>
			<td>${supplyList.contact_infomation}</td>
			<td>메일</td>
			<td>${supplyList.email}</td>
		</tr>
		<tr>
			<td colspan="8"><p></p></td>
		</tr>
	</c:forEach>
	</table>
	</div>
	
	<div>
	<table class="table table-bordered table-sm" id="tableContainer">
	
		<colgroup>
			<col width=5%>
			<col width=25%>
			<col width=10%>
			<col width=10%>
			<col width=10%>
			<col width=10%>
			<col width=10%>
		</colgroup>
		
		<tr>
			<td>No</td>
			<td>품명</td>
			<td>규격</td>
			<td>수량</td>
			<td>단가</td>
			<td>공급가액</td>
			<td>세액(공급가액*10%)</td>
		</tr>
		<c:forEach items="${msiList}" var="msiList" varStatus="abc">
		<tr>
			<td>${abc.count}</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="2">합계</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td colspan="8">기타사항</td>
		</tr>
		<tr>
			<td colspan="8">.</td>
		</tr>
	</table>
	</div>
	
	<div class="buttonContainer">
		<button type="button" id="app" class="btn btn-outline-dark">인쇄</button>
	</div>
	
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
	
	    $('#app').on('click', function() {
	        window.print();
	    });
	});
</script>

</body>
</html>