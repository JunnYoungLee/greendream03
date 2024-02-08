$(document).ready(function(){
	
    $("#supplyOrder").click(function(){
    	
		let table = document.getElementById('tableContainer');
		// tr 개수 새는 함수
		let rowList = table.rows;
	
	    for (i=1; i<rowList.length; i++) {
	    	let row = rowList[i];     //thead 부분을 제외하기 위해 i가 1부터 시작
	    	
	        // 부서번호 
	        //let dept = row.cells[7].lastChild.value;
	        // 현재고 - 사용량
	        //let recq = parseInt(cq)-parseInt(somo);
	    	
	    	let abc=row.cells[0].innerHTML; 
			let medical_supply_code=row.cells[1].innerHTML;
			let medical_supplies_name=row.cells[2].innerText;
			let standard=row.cells[3].innerText;
			let unit = row.cells[4].innerHTML;
	        let unit_price = row.cells[5].innerHTML;
	        let order_quantity = row.cells[6].innerHTML;
	        let supply_price = row.cells[7].innerHTML;
	        let surtax = row.cells[8].innerHTML;
	        let total_price = row.cells[9].innerHTML;
	        let special_note = row.cells[10].lastChild.value;
	        let person_in_charge = $('#person_in_charge').innerText;
			let date = $('#date').innerText;
			let hidden = $('#hidden').val();
			let dept = $('#sdept').innerText;
			let Progress_status = "발주완료";
			let bigo = "bigo";
			let total = $('#total').val();

			data = {
				"dept":dept, //부서
				"medical_supply_code":medical_supply_code, //의료용품 코드
				"medical_supplies_name":medical_supplies_name, //의료용품명
				"standard":standard, //규격
				"unit":unit, //단위
				"supplier":unit, //공급회사
				"unit_price":unit_price, //단가
				"order_quantity":order_quantity, //발주수량
				"supply_price":supply_price, //공급가액
				"surtax":surtax, //부가세
				"total_price":total_price, //총액
				"person_in_charge":person_in_charge, //담당자
				"order_date":date, //발주날짜
				"special_note":special_note, //특이사항
				"Progress_status":Progress_status, //특이사항
				"hidden":hidden //rno
			}
	    }
			$.ajax({
		        type:'post', 
		        url:'T',
				data : JSON.stringify(data),
		        dataType: 'json',
		        contentType:'application/json;charset=UTF-8',
		        success: function(data){ 
		        	alert(data);
		        	console.log("success");
		        },
			     error : function(request, status, error) {
			    	 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			 	}
			});
			
			window.location = "http://localhost:8080/transactionPage";
	     
    
	})
});