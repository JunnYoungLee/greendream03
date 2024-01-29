<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 발주서 </title>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<!-- inventoryPage.css -->
	<link href="../../resources/css/Joo/accountPage.css" rel="stylesheet">
	
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
		<tr>
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
			<td>
				<p>1</p>
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
		<button type="button" class="btn btn-outline-dark">확인</button>
	</div>
	<div class="button">
		<button type="button" class="btn btn-outline-dark">인쇄</button>
	</div>
	</div>
	
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>

</html>