$(document).ready(function(){
	
		var list = [];
		let table = document.getElementById('tableContainer');
		let rowList = table.rows;
		
		let supply_price = $('#supply_price').val();
		let surtax = $('#surtax').val();
		let total_price = $('#total_price').val();
		let order_date = $('#date').val();
		
		let total = $('#total').val();
		let hidden = $('#hidden').val();
		
	$(document).on("click", "#supplyOrder",function(){
		
		list.length = 0;
		
		for(i=0; i<rowList.length-3; i++){
			list.push($("#ss"+ i ).val());
		};
    	
		alert(list);
		alert(total);
		
		$.ajax({
	        type:'get', 
	        url:'TssT',
			data : {'list':list,
					'total':total
			}, 
	        dataType: JSON.stringify(),
	        contentType:'application/json;charset=UTF-8',
	        success: function(){ 
	        	console.log("success");
	        	window.location = "http://localhost:8080/transactionPage?list="+list+"";
	        	history.replaceState({}, null, location.pathname)
	        },
		     error : function(request, status, error) {
		    	alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		 	}
		});	
		
		//window.location = "http://localhost:8080/transactionPage";
	  
	});

	
});
