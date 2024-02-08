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
				location.href = 'http://localhost:8080/';
		}
	})
});

});