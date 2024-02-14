<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<link href="/../../resources/css/Joo/main.css" rel="stylesheet">
	
</head>
<body style="z-index:-1; background-color: #fffafa;">

<div class="buttonContainer">
<div class="invenBtn">
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='management'"> 재고 조회 </button>
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='consume'"> 사용 기록 </button>
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='request'"> 구매 요청 </button>
</div>

<div class="orderBtn">
<button type="button" class="btn btn-outline-dark buttonClass balju" onclick="location.href='order'"> 발주 요청 목록 </button>
<button type="button" class="btn btn-outline-dark buttonClass balju" onclick="location.href='complete'"> 발주 완료 목록 </button>
</div>

<div class="storeBtn">
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='Warehouse'"> 의료 용품 관리 </button>
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='#'"> 입고 현황 </button>
<button type="button" class="btn btn-outline-dark buttonClass" onclick="location.href='storeList'"> 입고 확인 </button>
</div>

</div>
</body>
</html>