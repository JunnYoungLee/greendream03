$(document).ready(function(){

$('#User_reference').on('click', function(){
	
	var user = $('#User_referencetem').val()
	var utim = $('#User_udatetime').val()
	
	$.ajax({
		url : 'wh',
		type : 'GET',
		data : {
			'user' : user,
			'utim' : utim
		},
		dateType : 'JSON',
		success : function(data){
			console.log(data)
			if(user != null){
				alert('기준온도 설정변경 하였습니다.');
			}else{
				alert('숫자만 기입해주세요.');
			}
			},
		error:function(request, status, error){

			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	})
});

$('#Motion_01').on('click',function(){
	
	var motion = $('#Motion_01').val();
	$.ajax({
		url : "motion",
		type : "get",
		data : {
			'motion' : motion
		},
		dateType : 'JSON',
		success : function(data){
			console.log(dtat)
		}
	})
});

});	