$(document).ready(function(){
	
    $('#app').on('click', function() {
        window.print();
    });
	
    

    $("#supplyOrder").click(function(){
	    
    	alert("aa");
    	
		let table = document.getElementById('#tableContainer');
		// tr 개수 새는 함수
		let rowList = table.rows;
	
	    for (i=1; i<rowList.length; i++) {
	    	let row = rowList[i];     //thead 부분을 제외하기 위해 i가 1부터 시작
	
	        // 부서번호 
	        //let dept = row.cells[7].lastChild.value;
	        // 현재고 - 사용량
	        //let recq = parseInt(cq)-parseInt(somo);
	        
	    	let dept = $('#dept').innerText(); 
			let medical_supply_code=row.cells[1].innerHTML
			let medical_supplies_name=row.cells[2].innerHTML
			let standard=row.cells[3].innerHTML
			let unit = row.cells[4].innerHTML;
	        let unit_price = row.cells[5].lastChild.value;
	        let order_quantity = row.cells[6].lastChild.value;
	        let supply_price = row.cells[7].lastChild.value;
	        let surtax = row.cells[8].lastChild.value;
	        let total_price = row.cells[9].lastChild.value;
	        let special_note = row.cells[10].lastChild.value;
	        let person_in_charge = $('#person_in_charge').innerText();
			let date = $('#date').val();
			
			/*let supply = [];
			
			supply.push(dept);
			supply.push(medical_supply_code);
			supply.push(medical_supplies_name);
			 
			console.log(supply);*/
			
			data={
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
					"date":date, //발주날짜
					"special_note":special_note, //특이사항
					"rno":rno
			}
			
			$.ajax({
		        type:'post', 
		        url:"T", // 컨트롤러로 가는 mapping 입력
		        data:JSON.stringify(data),// 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
		        dataType: 'json',
		        contentType:'application/json;charset=UTF-8',
		        success: function(result){ 
		        	console.log("success");
		        },
			     error : function(request, status, error) {
			    	 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			 	}
			    });
			
			alert("aa");
			window.location = "http://localhost:8080/transactionPage";
	      }
    
	})
});