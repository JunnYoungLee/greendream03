$(document).ready(function(){
$('#User_referencetem02').on('click', function(){
	
	var user = $('#User_referencetem01').val()
	var utim = $('#User_udatetime').val()
	
	$.ajax({
		url : 'wh',
		type : 'GET',
		data : {
			'user' : user,
			'utim' : utim
		},
		dataType : 'JSON',
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

function conn(){
		$.ajax({
			url : "mt",
			type : "GET",
			dataType : 'JSON',
			success : function(data){
				console.log(data)
				$("#tem").html(data[0].tdb)
				$("#hum").html(data[0].hdb)
				}
			})
			
	}

function move(){
		$.ajax({
			url : "move",
			type : "GET",
			dataType : 'JSON',
			success : function(data){
				if(data[0].motion == 1){
					$("#movement").html("움직임이 감지되었습니다.");
			}
			}
		})
	}

setInterval(move, 5000);
setInterval(conn, 5000);
});	