$(document).ready(function(){
	
	$(document).on("click", "button[name='order']",function(){
		// 선택된 check box 개수
		let checkboxLength=$("input[name='checkList']:checked").length;
		let checkData = new Array();
		let tdArr = new Array();
		let trArr = new Array();
		let checkdbox = $("input[name='checkList']:checked");
		
		checkdbox.each(function(i){
			
			let tr = checkdbox.parent().parent().eq(i);
			let td = tr.children();
			
			// 체크된 row의 모든 값을 배열에 담는다.
			checkData.push(tr.text());
			
			trArr.push(td.text());
		/* 	let data2 = td.eq(2).text();
			let data3 = td.eq(3).text();
			let data4 = td.eq(4).text();
			let data5 = td.eq(5).text();
			let data6 = td.eq(6).text(); */
			let data7 = td.eq(7).text();
		/* 	let data8 = td.eq(8).text();
			let data9 = td.eq(9).text();
			let data10 = td.eq(10).text();
			let data11 = td.eq(11).text();
			let data12 = td.eq(12).text();
			let data13 = td.eq(13).text();
			let data14 = td.eq(14).text();
			let data15 = td.eq(15).text(); */
		
			
		/* 	tdArr.push(data2);
			tdArr.push(data3);
			tdArr.push(data4);
			tdArr.push(data5);
			tdArr.push(data6); */
			tdArr.push(data7);
		/* 	tdArr.push(data8);
			tdArr.push(data9);
			tdArr.push(data10);
			tdArr.push(data11);
			tdArr.push(data12);
			tdArr.push(data13);
			tdArr.push(data14);
			tdArr.push(data15); */
	
		
		});
		console.log(tdArr);
		console.log(checkboxLength);
		let checkboolean = true;
		for(i=1; i<checkboxLength; i++){
			if(tdArr[i*0]==tdArr[i*1]){
				checkboolean = true;
			}else{
				checkboolean = false;
				
				break;
			}
		}
		
		if(checkboolean == true){
			let chk_arr = [];

			// 1.
			$("input[name='checkList']:checked").each(function(){
				chk_arr.push($(this).val()); // push: 배열에 값 삽입
			});
			
			console.log(chk_arr);

			
		
			//출력
			console.log(chk_arr);
			//document.getElementById('result').innerText = chk_arr;
			window.location = "http://localhost:8080/A?chk_arr="+chk_arr+"";
			alert("발주신청페이지"); 
			
		}else{
			alert("같은 공급회사를 선택해 주세요")
		}

		

	
	});
	
	
});