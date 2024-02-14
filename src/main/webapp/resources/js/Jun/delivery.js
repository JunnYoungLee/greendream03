$(document).ready(function(){	
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(35.542100, 129.338253), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨 
    }; 
	var latitudeA = document.getElementById('latitudeA').value;
	var longitudeA = document.getElementById('longitudeA').value;
	
	var latitudeB = document.getElementById('latitudeB').value;
	var longitudeB = document.getElementById('longitudeB').value;
	console.log(latitudeA);
	console.log(longitudeA);
	console.log(latitudeB);
	console.log(longitudeB);
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	// 그린드림병원 위치	
	//마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(35.542100, 129.338253); 
	
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	
	
	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
	
	var iwContent = '<div style="padding:5px;">그린드림병원 </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPosition = new kakao.maps.LatLng(35.542100, 129.338253); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindow = new kakao.maps.InfoWindow({
	    position : iwPosition, 
	    content : iwContent 
	});
	  
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindow.open(map, marker); 
	
	// gpsA
	//마커가 표시될 위치입니다 
	var markerPositionA  = new kakao.maps.LatLng(latitudeA, longitudeA); 
	
	// 마커를 생성합니다
	var markerA = new kakao.maps.Marker({
	    position: markerPositionA
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	markerA.setMap(map);
	
	var iwContentA = '<div style="padding:5px;">배송차량A </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPositionA = new kakao.maps.LatLng(latitudeA, longitudeA); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindowA = new kakao.maps.InfoWindow({
	    position : iwPositionA, 
	    content : iwContentA 
	});
	
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindowA.open(map, markerA); 	
	
	// gpsB 
	
	//마커가 표시될 위치입니다 
	var markerPositionB  = new kakao.maps.LatLng(latitudeB, longitudeB); 
	
	// 마커를 생성합니다
	var markerB = new kakao.maps.Marker({
	    position: markerPositionB
	});
	
	// 마커가 지도 위에 표시되도록 설정합니다
	markerB.setMap(map);
	
	var iwContentB = '<div style="padding:5px;">배송차량B </div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
	    iwPositionB = new kakao.maps.LatLng(latitudeB, longitudeB); //인포윈도우 표시 위치입니다
	
	// 인포윈도우를 생성합니다
	var infowindowB = new kakao.maps.InfoWindow({
	    position : iwPositionB, 
	    content : iwContentB 
	});
	
	// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다
	infowindowB.open(map, markerB);
	
	setTimeout(function(){
		location.reload();
		},10000);
	
});