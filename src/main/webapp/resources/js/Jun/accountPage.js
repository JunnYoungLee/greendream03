$(document).ready(function(){
	
	
	today = new Date();
		
		console.log("today.toISOString() >>>" + today.toISOString());
		today = today.toISOString().slice(0, 10);
		
		console.log("today >>>> " + today);
		bir = document.getElementById("date");
		
		bir.value = today;
	let table = $('.data_table').val();
	alert(table);
	console.log(table);
	// tr 개수 새는 함수
	let rowList = table.rows;

    for (i=1; i<rowList.length; i++) {
    	let row = rowList[i];     //thead 부분을 제외하기 위해 i가 1부터 시작
       

        //let code = row.cells[0].innerHTML;
       
        // 부서번호 
        //let dept = row.cells[7].lastChild.value;
        // 현재고 - 사용량
        //let recq = parseInt(cq)-parseInt(somo);
        
		let total_price = row.cells[10].innerHTML
	
		alert(total_price)
    }
});