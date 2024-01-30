
//적용 버튼을 누르고 소모량 계산 후 재고 db 적용 및 소모량 db 적용

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
        
		let medical_supply_code=row.cells[0].innerHTML
		let medical_supplies_name=row.cells[1].innerHTML
		let standard=row.cells[2].innerHTML
		let unit=row.cells[3].innerHTML
		let cq = row.cells[4].innerHTML;
        let somo = row.cells[6].lastChild.value;
		let current_quantity = parseInt(cq)-parseInt(somo)
		let dept = $('#dept').val();
		let date = $('#date').val();
		let name = $('#name').val();
			
		order={
				"dept":dept, 
				"medical_supply_code":medical_supply_code,
				"medical_supplies_name":medical_supplies_name,
				"standard":standard, 
				"unit":unit,
				"used_quantity":somo,
				"current_quantity":current_quantity,
				"date":date,
				"person_in_charge":name
				
		}	
		
 
        $.ajax({
	        type:'put', 
	        url:"consumeInternal", // 컨트롤러로 가는 mapping 입력
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
        console.log(dept);
        console.log(medical_supply_code);
        console.log(current_quantity);
      }
    
    window.opener.document.location.href = window.opener.document.URL;
    setTimeout(function() {  
        window.close();  
            }, 100); 


		
});

