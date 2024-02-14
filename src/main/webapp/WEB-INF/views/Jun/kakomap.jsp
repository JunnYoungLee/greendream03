<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao 지도 시작하기</title>
</head>
<body>
	<input type="hidden" id="latitude" value="${gpsA.latitude}">
	<input type="hidden" id="longitude" value="${gpsA.longitude}">
	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52d3ec4ed67af68f08fbd6870b95ad2a"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨 
    }; 
	var latitude = document.getElementById('latitude').value;
	
	var longitude = document.getElementById('longitude').value;
	
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(latitude, longitude); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">배송차량 </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(latitude, longitude); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	
	// 그린드림병원 위치
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker2); 
	
	//마커가 표시될 위치입니다 
	var markerPosition2  = new kakao.maps.LatLng(35.542100, 129.338253); 
	
	// 마커를 생성합니다
	var marker2 = new kakao.maps.Marker({
	    position: markerPosition2
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker2.setMap(map);
	
	var iwContent2 = '<div style="padding:5px;">그린드림병원 </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition2 = new kakao.maps.LatLng(35.542100, 129.338253); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindow2 = new kakao.maps.InfoWindow({
	    position : iwPosition2, 
	    content : iwContent2 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow2.open(map, marker2); 
	</script>
</body>
</html>