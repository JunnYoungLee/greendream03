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

<style type="text/css" media="print">  

    @page{  size:auto; margin : 15mm;  }

</style>


</head>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="/../../resources/js/Joo/transactionPage.js"></script>
<script src="/../../resources/js/Joo/html2canvas.js"></script>
<script src="/../../resources/js/Joo/jspdf.min.js"></script>

<body>

<div class="main">
<div id="print">
	<div>
	<table class="table table-bordered table-sm tableClass" id="tableContainer01">
	<c:forEach items="${join_supplier}" var="join_supplier">
		<input type="hidden" name="hidden" id="hidden" value="${join_supplier.rno}">
		<input type="hidden" name="supplier" id="supplier" value="${join_supplier.supplier}">
	</c:forEach>
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
			<td rowspan="2" style="vertical-align: middle;">부서명</td>
			<td rowspan="2"style="vertical-align: middle;">${supplyOrderList[0].dept}</td>
			<td>사업자번호</td>
			<td colspan="4">${supplyList[0].business_number}</td>
		</tr>
		<tr>
			<td>업체명</td>
			<td>${supplyList[0].supplier}</td>
			<td>담당자명</td>
			<td>${supplyList[0].supplier_person}</td>
		</tr>
		<tr>
			<td>발주담당자</td>
			<td>${sessionScope.yldto.name}</td>
			<td>주소</td>
			<td colspan="3">${supplyList[0].location}</td>
		</tr>
		<tr>
			<td>총 합계</td>
			<td>${sessionScope.total}</td>
			<td>전화</td>
			<td>${supplyList[0].contact_infomation}</td>
			<td>메일</td>
			<td>${supplyList[0].email}</td>
		</tr>
		<tr>
			<td colspan="8"><p></p></td>
		</tr>
	
	</table>
	</div>
	
	<div>
	<table class="table table-bordered table-sm tableClass" id="tableContainer02">
		<colgroup>
			<col width=5%>
			<col width=20%>
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
			<td>부가세</td>
		</tr>
		<c:forEach items="${supplyOrderList}" var="supplyOrderList" varStatus="abc">
		<input type="hidden" value="${supplyOrderList.supplier}" name="supplier" id="supplier">
		<input type="hidden" value="${supplyList[0].email}" name="email" id="email">
		<input type="hidden" value="${supplyList[0].supplier_person}" name="supplier_person" id="supplier_person">
		<tr>
			<td>${abc.count}</td>
			<td>${supplyOrderList.medical_supplies_name}</td>
			<td>${supplyOrderList.standard}</td>
			<td>${supplyOrderList.order_quantity}</td>
			<td><fmt:formatNumber value="${supplyOrderList.unit_price}" pattern="#,###" /></td>
			<td><fmt:formatNumber value="${supplyOrderList.supply_price}" pattern="#,###" /></td>
			<td><fmt:formatNumber value="${supplyOrderList.surtax}" pattern="#,###" /></td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="2">합계</td>
			<td></td>
			<td>${sum}</td>
			<td>${unit}</td>
			<td>${price}</td>
			<td>${allsur}</td>
		</tr>
		<tr>
			<td colspan="8">기타사항</td>
		</tr>
		<tr>
			<td colspan="8" height=100px><input type="text" id="bigo" style="width: 1000px; height:100px; border:none;" ></td>
		</tr>
	</table>
	</div>
</div>
	
	<div class="buttonContainer">
		<button type="button" id="email" class="btn btn-outline-dark" onclick="clickMail()"> 메일 발송 </button>
		<button type="button" id="app" class="btn btn-outline-dark"> 인쇄 하기 </button>
		<button type="button" id="close" class="btn btn-outline-dark" onclick="location.href='/'"> 돌아가기 </button>
	</div>
	
</div>

</body>
</html>