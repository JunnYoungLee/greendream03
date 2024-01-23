<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title> 재무관리 </title>
	
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<!-- inventoryPage.css -->
<!-- <link href="../../resources/css/Joo/inventoryPage.css" rel="stylesheet"> -->
	<style>
	@charset "UTF-8";
	
	.sidebars{
		position: relative;
		float: left;

	}
	
	.main{
		position: relative;
/* 		float: left; */
		text-align: center;
		
	}
	
	.tableContainer{
		margin: auto;
		
	}
	
	</style>
	
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
		<table border="1" class="tableContainer">
			<tr>
				<td><p></p></td>
				<td><p>No.</p></td>
				<td><p>품번</p></td>
				<td><p>품명</p></td>
				<td><p>용량</p></td>
				<td><p>재고량</p></td>
				<td><p>사용량</p></td>
			</tr>
			<tr>
				<td><input type="checkbox" /></td>
			</tr>
		</table>
	</div>
	
	<div>
	<button type="button">신청</button>
	<button type="button">추가</button>
	<button type="button">삭제</button>
	</div>



</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>

</html>