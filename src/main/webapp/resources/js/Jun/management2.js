

$(document).ready(function(){
/*	today = new Date();
	
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	
	console.log("today >>>> " + today);
	bir = document.getElementById("date");
	
	bir.value = today;*/
	// 새로고침만 계속 하면 될 듯 gps 관리? 페이지에서
	if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(success, error);
	} else {
	    alert("Geolocation is not supported by this browser.");
	}

	function success(position) {
	    var latitude = position.coords.latitude;
	    var longitude = position.coords.longitude;
	    console.log("Latitude: " + latitude + ", Longitude: " + longitude);
	    gps={
				"latitude":latitude, 
				"longitude":longitude	
		}
	    $.ajax({
	        type:'put', 
	        url:"gps", // 컨트롤러로 가는 mapping 입력
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
	//사용량  버튼 클릭
$('#consume').on("click", function(){
	
/*		// 날짜 세션 저장
		let date = $('#date').val();
		let name = $('#name').val();
		console.log(date);z
		console.log(name);
			
		 $.ajax({
		        type:'Post', 
		        url:"sessionInternal", // 컨트롤러로 가는 mapping 입력
		        data:{"date":date, "name":name},// 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
		        dataType: 'json',
		        success: function(data){ 
		        	console.log("success");
		        },
			     error : function() {
			 		console.log("error");
			 	}
		    });	*/
		//사용량 입력 페이지 실행 
		 window.location = "http://localhost:8080/consume";
	});
	
		//구매요청  버튼 클릭
		$('#request').on("click", function(){
/*			// 날짜 세션 저장
			let date = $('#date').val();
			let name = $('#name').val();
			console.log(date);
			console.log(name);
				
			 $.ajax({
			        type:'Post', 
			        url:"sessionInternal2", // 컨트롤러로 가는 mapping 입력
			        data:{"date":date, "name":name},// 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
			        dataType: 'json',
			        success: function(data){ 
			        	console.log("success");
			        },
				     error : function() {
				 		console.log("error");
				 	}
			    });	*/
		//구매 요청 페이지 실행
		window.location = "http://localhost:8080/request";
			
	});

	 

});





