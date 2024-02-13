<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>창고 관리</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/../../resources/css/Yang/YangWarehouse.css">
</head>
<body>
<jsp:include page = "../Joo/headers.jsp" ></jsp:include>
<jsp:include page = "../Joo/sidebars.jsp" ></jsp:include>
	<div id="User_container">
		<div id="User_box01">
			<input type="text" id="User_referencetem">
			<input type="hidden" id="User_udatetime" value="시간">
		</div>
		<div id="User_box02">
			<input type="button" id="User_reference" value="입력">
		</div>
		<div id="User_box03">
			<div id="Motion-01">${dht.motion}</div>
		</div>
	</div>
</body>
<script src="/../../resources/js/Yang/Warehouse.js"></script>

</html>