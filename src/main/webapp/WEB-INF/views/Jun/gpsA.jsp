<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gpsA 차량용 페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<h2>gpsA 차량용 페이지</h2>
<p>위치 확인</p>
<script type="text/javascript">
$(document).ready(function(){
	

	// 새로고침만 계속 하면 될 듯 gps 관리? 페이지에서
	if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(success, error);
	} else {
	    alert("Geolocation is not supported by this browser.");
	}

	function success(position) {
	    var latitude = position.coords.latitude;
	    var longitude = position.coords.longitude;
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = { 
	        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
	        level: 10 // 지도의 확대 레벨 
	    }; 

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	    console.log("Latitude: " + latitude + ", Longitude: " + longitude);
	    gps={
				"latitude":latitude, 
				"longitude":longitude	
		}
	    $.ajax({
	        type:'put', 
	        url:"gpsA", // 컨트롤러로 가는 mapping 입력
	        data:JSON.stringify(gps),// 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
	        dataType: 'json',
	        contentType:'application/json;charset=UTF-8',
	        success: function(result){ 
	        	console.log("success");
	        },
		     error : function() {
		 		console.log("error");
		 	}
	    });
	}

	function error() {
	    alert("Unable to retrieve your location.");
	}
	setTimeout(function(){
		location.reload();
		},10000);
});
</script>
</body>
</html>