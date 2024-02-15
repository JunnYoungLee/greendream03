<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의료 용품 관리</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="/../../resources/css/Yang/YangWarehouse.css">
<script type="text/javascript" src="/../../resources/js/Yang/Warehouse.js"></script>
</head>
<body>
<jsp:include page = "../Joo/headers.jsp" ></jsp:include>
<jsp:include page = "../Joo/sidebars.jsp" ></jsp:include>

	<div id="K_container" >
	<h3>의료 용품 관리</h3>
	<!-- 실시간 온ㆍ습도 입니다. -->
		<div id="User_box01" class="box_01">
		
			<div id="Contanier_01" class="box_02">
				<span>의료 용품 관리실 온도</span>
				
				<div id="tem" class="box_03"></div>
			</div>
			
			<div id="Contanier_02" class="box_02">
				<span>의료 용품 관리실 습도</span>
				
				<div id="hum" class="box_03"></div>
			</div>
			
			<div id="Contanier_03">
				<div id="User_box02">
					<input type="text" id="User_referencetem01">
					<input type="button" id="User_referencetem02" value="입력">
					<input type="hidden" id="User_udatetime" value="시간">
				</div>
			</div>
			
		</div>
	<!-- 움직임 및 알람 입니다. -->
		<div id="Contanier_04" class="box_01">
			<div id="User_box03" class="box_02">
				<span>움직임 감시 카메라</span>
				<div id="movement" class="box_03"></div>
			</div>
		</div>
	</div>
</body>

</html>