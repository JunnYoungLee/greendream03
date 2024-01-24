//아이디 유효성 검사

$(document).ready(function() {
						//영문			//숫자
	var RegexId = /^[a-z0-9_-]{3,16}$/,/[0-9]/;
	$('#Name').blur(function() {
		if($.trim($("#Name").val())==""){
			$('.idchk').html("영문이름을 입력해주세요").css('color','red');
			$('#Name').val("");
		}else if(!RegexId.test($.trim($("#Name").val()))){
			$('.idchk').html("영문이름 또는 철자 확인해주세요").css('color','red');
			$('#Name').val("");
		}else{
			var name = $('#Name').val();
			 $.ajax(
				{
					url:'/login/nameCheck',
					type : "post",
					data : {
						"name" : name
					},
					dataType : 'text',
					success : function(data) {
						if (data == "redundancy") {
							$('.idchk').html("중복된 아이디 입니다").css('color','red');
							$('#Name').val("");
						} else if (data == "noredundancy") {
							$('.idchk').html("사용가능한 아이디입니다").css('color', 'green');
							;
						}
					}
				});
			}
			
	};
};