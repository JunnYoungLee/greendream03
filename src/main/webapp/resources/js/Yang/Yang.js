$(function(){
	
$('#Login').on("click", function(){
	
	var userId = $('#Name').val();
	var userPw = $('#Pw').val();
	
	if(userId == ""){
		alert("영문이름을 확인해주세요");
		$("#Name").focus();
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
			'userId' : userId,
			'userPw' : userPw
		},
		dataType : 'json',
		success : function(data){
			console.log(data)
			if(data == 0)
				alert('다시 확인하여 입력해주세요.');
			else
				location.href="/";
		}
			
	})
});

})