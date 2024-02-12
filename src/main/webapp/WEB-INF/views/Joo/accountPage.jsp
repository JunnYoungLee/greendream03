<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 발주서 </title>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300&display= swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">

	<!-- inventoryPage.css -->
	<link href="/../../resources/css/Joo/accountPage.css" rel="stylesheet">
	
</head>
<body>


<div class="headers">
<!-- 공통 헤더 -->
<jsp:include page = "headers.jsp" ></jsp:include>
</div>

<div class="sidebars">
<!-- 메뉴 사이드 바 -->
<jsp:include page = "sidebars.jsp" ></jsp:include>
</div>
 <input type="date" id="date" name="date" class="aa da"style="display:none;"> 
<div class="main">
	
	<div>
	<table style="width:65%" class="table table-bordered table-sm tableContainer">
		<colgroup>
			<col width=59%>
			<col width=1%>
			<col width=10%>
			<col width=10%>
			<col width=10%>
			<col width=10%>
		</colgroup>
		<tr>
		
			<td rowspan="2">
				<p>발&nbsp&nbsp주&nbsp&nbsp서</p>
			</td>
			<td rowspan="2">
				<p>결재란</p>
			</td>
			<td><input type="hidden"></td>
			<td><input type="hidden"></td>
			<td><input type="hidden"></td>
			<td><input type="hidden"></td>
		</tr>
		<tr>
			<td height=70px><input type="hidden"></td>
			<td><input type="hidden"></td>
			<td><input type="hidden"></td>
			<td><input type="hidden"></td>
		</tr>
	</table>
	</div>

	<div>
	<table  border="1" style="width:65%" class="table table-bordered table-sm tableContainer">
		<colgroup>
			<col width=10%>
			<col width=15%>
			<col width=10%>
			<col width=15%>
			<col width=10%>
			<col width=15%>
			<col width=10%>
			<col width=15%>
		</colgroup>
		<c:forEach items="${orderMember}" var="orderMember">
		<tr>
			<td>
				<p>부서</p>
			</td>
			<td id="dept">
				${orderMember.dept}
			</td>
			<td>
				<p>담당자</p>
			</td>
			<td id="person_in_charge">
				${orderMember.name}
			</td>
			<td>
				<p>연락처</p>
			</td>
			<td>
				${orderMember.pn}
			</td>	
			<td>	
				<p>발주일자</p>
			</td>
			<td>
				<c:set var="ymd" value="<%=new Date()%>" />
				<fmt:formatDate value="${ymd}" pattern="yyyy-MM-dd" />
				<input type="hidden" id="date" value="${ymd}" />
			</td>
		</tr>
		</c:forEach>
		<tr>
			<td colspan="10">
				<input type="hidden">
			</td>
		</tr>
		<c:forEach items="${select_supplier}" var="join_supplier">
		<tr>
			<td>
				<p>상호</p>
			</td>
			<td colspan="4">
				${join_supplier.supplier}
			</td>
			<td>
				<p>담당자명</p>
			</td>
			<td colspan="4">
				${join_supplier.supplier_person}
			</td>
		</tr>
		<tr>
			<td>
				<p>소재지</p>
			</td>
			<td colspan="4">
				${join_supplier.location}
			</td>
			<td>
				<p>납기일자</p>
			</td>
			<td colspan="4">
				<!-- 일주일 후 -->
				<c:set var="sevenDayAfter" value="<%=new Date(new Date().getTime() + 60*60*24*1000*7)%>"/>
				<fmt:formatDate value="${sevenDayAfter}" pattern="yyyy-MM-dd"/>
				<input type="hidden" id="sevenDayAfter" value="${sevenDayAfter}" />
			</td>
		</tr>
		<tr>
			<td>
				<p>연락처</p>
			</td>
			<td colspan="4">
				${join_supplier.contact_infomation}
			</td>
			<td>
				<p>이메일</p>
			</td>
			<td colspan="4">
				${join_supplier.email}
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>

	<div id="result">
	<table border="1" style="width:65%" class="table table-bordered table-sm data_table tableContainer" id="tableContainer" >
	
		<tr>
			<td>
				<p>No</p>
			</td>
			<td>
				<p>품번</p>
			</td>
			<td>
				<p>품명</p>
			</td>
			<td>
				<p>규격</p>
			</td>
			<td>
				<p>단위</p>
			</td>
			<td>
				<p>단가</p>
			</td>
			<td>
				<p>수량</p>
			</td>
			<td>
				<p>공급가액</p>
			</td>
			
			<td>
				<p>부가세</p>
			</td>
			
			<td>
				<p>총액</p>
			</td>
			<td>
				<p>특이사항</p>
			</td>
		</tr>
		<c:forEach items="${purchaseList}" var="purchaseList" varStatus="abc">
		<input type="hidden" value="${purchaseList.rno}" id="ss${abc.index}">
		<input type="hidden" value="${purchaseList.rno}" id="hidden">
		<input type="hidden" value="${purchaseList.supply_price}" id="supply_price">
		<input type="hidden" value="${purchaseList.surtax}" id="surtax">
		<input type="hidden" value="${purchaseList.total_price}" id="total_price">
		
		<tr>
			<td>
				${abc.count}
			</td>
			<td>
				${purchaseList.medical_supply_code}
			</td>
			<td>
				${purchaseList.medical_supplies_name}
			</td>
			<td>
				${purchaseList.standard}
			</td>
			<td>
				${purchaseList.unit}
			</td>
			<td>
				${purchaseList.unit_price}
			</td>
			<td>
				${purchaseList.request_quantity}	
			</td>
			<td>
				${purchaseList.supply_price}
			</td>
			<td>
				${purchaseList.surtax}
			</td>
			<td>
				${purchaseList.total_price}
			</td>
			<td>
				<input type="text" id="bigo" style="width: 50px;border:none;" value="${purchaseList.special_note}" >
			</td>
			

		</tr>
		</c:forEach>

		<tr>
			<td colspan="10"><p>비고</p></td>
			<td colspan="10"><p>합계</p> </td>
		</tr>
		<tr>
			<td colspan="10" height=100px><input type="text" id="bigo" style="width: 1000px; height:100px; border:none;" ></td>
			<td colspan="10" height=100px><input type="hidden" name="total" id="total" value="${total}">${total}</td>
		</tr>

	</table>
	</div>

	<br>
	
	<div class="buttonContainer">
		<div class="button">
			<button type="button" id="supplyOrder" class="btn btn-outline-dark" >발주하기</button>
		</div>
	</div>
	
</div>
<script src="/../../resources/js/Joo/accountPage.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>


</body>

</html>