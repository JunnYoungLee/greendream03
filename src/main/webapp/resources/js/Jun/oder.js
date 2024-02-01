
$(document).ready(function(){
	today = new Date();
	
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	
	console.log("today >>>> " + today);
	bir = document.getElementById("date");
	
	bir.value = today;
	//사용량  버튼 클릭
	$('#order').click(function() {
		let rowData = new Array();
		let tdArr = new Array();
		let trArr = new Array();
		let checkbox = $("input[name=ckb]:checked")
		let checkboxLength = $("input[name=ckb]:checked").length
		console.log(checkboxLength)
	 // 체크된 체크박스 값을 가져온다
		checkbox.each(function(i){
			
			let tr = checkbox.parent().parent().eq(i);
			let td = tr.children();
			
			// 체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text());
			trArr.push(td.text());
			
			let medical_supply_code = td.eq(1).text();
			let medical_supplies_name = td.eq(2).text();
			let standard = td.eq(3).text();
			
			tdArr.push(medical_supply_code);
			tdArr.push(medical_supplies_name);
			tdArr.push(standard);
			tdArr.push(standard);
			tdArr.push(standard);
			tdArr.push(standard);
			tdArr.push(standard);
			
			
			
		});
	
		

	})
	
	
});