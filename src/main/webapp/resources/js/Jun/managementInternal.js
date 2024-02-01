

$(document).ready(function(){
	today = new Date();
	
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	
	console.log("today >>>> " + today);
	bir = document.getElementById("date");
	
	bir.value = today;
	//사용량  버튼 클릭
	$('#consume').on("click", function(){
	
		// 날짜 세션 저장
		let date = $('#date').val();
		let name = $('#name').val();
		console.log(date);
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
		    });	
		//사용량 입력 페이지 실행 
		var url = "useInternal";
		var name2 = "popup test";
		var option = "width = 700, height = 500, top = 100, left = 200, location = no"
		window.open(url, name2, option);
	});
	
	//구매요청  버튼 클릭
	$('#request').on("click", function(){
		// 날짜 세션 저장
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
		    });	
	//구매 요청 페이지 실행
	var url = "requestInternal";
	var name2 = "popup test";
	var option = "width = 1000, height = 500, top = 100, left = 200, location = no"
		window.open(url, name2, option);
		
	});

	 

});





