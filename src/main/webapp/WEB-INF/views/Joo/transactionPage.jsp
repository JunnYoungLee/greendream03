<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 거래명세서 </title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<!-- transaction.css -->
	<link href="../../resources/css/Joo/transactionPage.css" rel="stylesheet">

</head>
<body>

<div class="main">
	<div>
	<table class="table table-bordered table-sm" id="tableContainer">
	
		<tr>
			<td colspan="8"><h1>거래명세서</h1></td>
		</tr>
		<tr>
			<td>발행일</td>
			<td><input></td>
			<td rowspan="5"><p></p></td>
			<td colspan="5">공급자</td>
		</tr>
		<tr>
			<td rowspan="2">거래처명</td>
			<td rowspan="2"><input></td>
			<td>사업자번호</td>
			<td colspan="4"><input></td>
		</tr>
		<tr>
			<td>업체명</td>
			<td><input></td>
			<td>대표</td>
			<td><input></td>
		</tr>
		<tr>
			<td>인수담당자</td>
			<td><input></td>
			<td>주소</td>
			<td colspan="3"><input></td>
		</tr>
		<tr>
			<td>총 합계</td>
			<td ><input></td>
			<td>전화</td>
			<td><input></td>
			<td>팩스</td>
			<td><input></td>
		</tr>
		<tr>
			<td colspan="8"><p></p></td>
		</tr>
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
		<tr>
			<td>.</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>.</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>.</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>.</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>.</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
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
	
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>


</body>
</html>