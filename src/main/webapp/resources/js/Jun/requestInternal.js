
//적용 버튼을 누르면 구매요청 하기
$("#submit").click(function() {
	let table = document.getElementById('consume');
	// tr 개수 새는 함수
	let rowList = table.rows;

    for (i=1; i<rowList.length; i++) {
    	let row = rowList[i];     //thead 부분을 제외하기 위해 i가 1부터 시작
       
        
        //let code = row.cells[0].innerHTML;
        // 부서번호 
        //let dept = row.cells[7].lastChild.value;
        // 현재고 - 사용량
        //let recq = parseInt(cq)-parseInt(somo);
        
		let medical_supply_code = row.cells[0].innerHTML
		let medical_supplies_name = row.cells[1].innerHTML
		let standard = row.cells[2].innerHTML
		let unit = row.cells[3].innerHTML
		let supplier = row.cells[4].innerHTML
		let current_quantity = row.cells[5].innerHTML
		let safety_inventory_quantuty = row.cells[6].innerHTML
		let request_quantity = row.cells[7].lastChild.value
		let special_note = row.cells[8].lastChild.value
		let unit_price = row.cells[9].lastChild.value
		
		
		let dept = $('#dept').val();
		let progress_status = "발주 전";
		let date = $('#date').val();
		let name = $('#name').val();
		
		if(request_quantity!=0){
			order={
					"dept":dept, 
					"medical_supply_code":medical_supply_code,
					"medical_supplies_name":medical_supplies_name,
					"standard":standard, 
					"unit":unit,
					"supplier":supplier,
					"unit_price":unit_price,
					"current_quantity":current_quantity,
					"safety_inventory_quantuty":safety_inventory_quantuty,
					"request_quantity":request_quantity,
					"person_in_charge":name,
					"date":date,
					"special_note":special_note,
					"progress_status":progress_status
			}	
			
			
			$.ajax({
		        type:'put', 
		        url:"requestInternal", // 컨트롤러로 가는 mapping 입력
		        data:JSON.stringify(order),// 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
		        dataType: 'json',
		        contentType:'application/json;charset=UTF-8',
		        success: function(result){ 
		        	console.log("success");
		        },
			     error : function() {
			 		console.log("error");
			 	}
		    });
		}
        
        console.log(dept);
        console.log(medical_supply_code);
        console.log(current_quantity);
        console.log(request_quantity);
      }
    
	window.opener.document.location.href = window.opener.document.URL;
 
	setTimeout(function() {  
		window.close();  
    }, 100);  
    

});

