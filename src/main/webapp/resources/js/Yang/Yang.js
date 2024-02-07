$(function(){
	
$('#Login').on("click", function(){
	
	var userId = $('#Id').val();
	var userPw = $('#Pw').val();
	
	if(userId == ""){
		alert("아이디를 입력해주세요.");
		$("#Id").focus();
		return;
	}
	
	if(userPw == ""){
		alert("비밀번호를 입력하세요.");
		$("#Pw").focus();
		return;
	}
	
	$.ajax({
		url : "K_login",
		type : "POST",
		data : {
			'userId' : userId, // data에 어떤 값을 controller에 보내서 DB와 비교하는지 
			'userPw' : userPw
		},
		dataType : 'json',
		success : function(data){
			console.log(data)
			if(data == 0)
				alert('잘못입력하였습니다. 다시 확인해주세요.');
			else
				location.href = 'http://localhost:8080/management/';
		}
	})
});

$("#User_reference").on("click", function(){
	var user = $('#User_reference').val()
	var time = $('#User_datetime').val()
	
/*	$.ajax({
		url : "Wh",
		type : GET,
		data : {
			'user' : user,
			'time' : dtim
		},
		dateType : 'JSON',
		success : function(data){
			console.log(data)
			if()
				alert('기준온도 설정변경 하였습니다.');
			else
				alert('숫자만 기입해주세요.');
		}
		
	})*/

});