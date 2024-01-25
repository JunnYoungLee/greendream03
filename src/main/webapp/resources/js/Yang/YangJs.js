var login = {
		init: function()
		login.bind();
		},
		bind: function(){
			$("#Login").on('click', function(){
				login.signin();
			});
		},
		signin: function(){
			$.ajax({
				url: '/login',
				type: 'POST',
				data: {
					name : $("#Name").val(),
					password : $("#Pw").val()
				},
				success: function(res){
					if(res.code=='200'){
						alert("로그인 되었습니다.");
						common.gePage("/");
					} else {
						alert(res.message);
					}
					console.log(res);
				}
			});
		}
	}
$(function(){
	login.init();
}

