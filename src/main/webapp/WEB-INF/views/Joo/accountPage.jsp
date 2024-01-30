<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div class="main">
	
	<div>
	<table class="table table-bordered table-sm" id="tableContainer">
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
				<p>발주서</p>
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
	<table  border="1" class="table table-bordered table-sm" id="tableContainer">
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
		<tr>
			<td>
				<p>부서</p>
			</td>
			<td>
				<input type="hidden" id="dept" name="dept">
			</td>
			<td>
				<p>담당자</p>
			</td>
			<td>
				<input type="hidden" id="person_in_charge" name="person_in_charge">
			</td>
			<td>
				<p>연락처</p>
			</td>
			<td>
				<input type="hidden" id="pn" name="pn">
			</td>	
			<td>	
				<p>발주일자</p>
			</td>
			<td>
				<input type="hidden" id="order_date" name="order_date">				
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<input type="hidden">
			</td>
		</tr>
		<tr>
			<td>
				<p>상호</p>
			</td>
			<td colspan="4">
				<input type="hidden" id="supplier" name="supplier">
			</td>
			<td>
				<p>담당자명</p>
			</td>
			<td colspan="4">
				<input type="hidden" id="supplier_person" name="supplier_person">
			</td>
		</tr>
		<tr>
			<td>
				<p>소재지</p>
			</td>
			<td colspan="4">
				<input type="hidden" id="location" name="location">
			</td>
			<td>
				<p>납기일자</p>
			</td>
			<td colspan="4">
				<input type="hidden">
			</td>
		</tr>
		<tr>
			<td>
				<p>연락처</p>
			</td>
			<td colspan="4">
				<input type="hidden" id="contact_information" name="contact_information">
			</td>
			<td>
				<p>이메일</p>
			</td>
			<td colspan="4">
				<input type="hidden" id="email" name="email">
			</td>
		</tr>
	</table>
	</div>

	<div>
	<table border="1" class="table table-bordered table-sm" id="tableContainer">
	
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
				<p>수량</p>
			</td>
			<td>
				<p>단가</p>
			</td>
			<td>
				<p>기타</p>
			</td>
		</tr>
		<c:forEach items="${msiList}" var="msiList" varStatus="abc">
		<tr>
			<td>
				<p>${abc.count}</p>
			</td>
			<td>
				${msiList.medical_supply_code}
			</td>
			<td>
				${msiList.medical_supplies_name}
			</td>
			<td>
				${msiList.standard}
			</td>
			<td>
				${msiList.unit}
			</td>
			<td>
				<input>
			</td>
			<td>
				${msiList.unit_price}
			</td>
			<td>
				${msiList.detail}
			</td>

		</tr>
		</c:forEach>
				<tr>
			<td>
				<p>합계</p>
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>
			<td>
				<input type="hidden">
			</td>	
		</tr>
		<tr>
			<td colspan="10"><p>비고</p></td>
		</tr>
		<tr>
			<td colspan="10" height=100px><input type="hidden"></td>
		</tr>

	</table>
	</div>

	<br>
	
	<div class="buttonContainer">
		<div class="button">
			<button type="button" class="btn btn-outline-dark">신청하기</button>
		</div>
	</div>
	
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<!-- sidebars.js -->
<script src="/../../resources/js/Joo/sidebars.js"></script>


</body>

</html>