$(document).ready(function(){
	// select 시 내용 변경
	 $("#supSelect").change(function(){
		let supplier = $("select[name=supplier] option:selected").text();
		let supplierVal = $("select[name=supplier] option:selected").val();

		 $.ajax({
				url : "orderSlected",
				type : "POST",
				data:{"supplier":supplier},
				dataType : 'json',
				success: function(result){ 
		        	console.log("success");
		        },
			     error : function() {
			 		console.log("error");
			 	}
			});
		 window.location.href = "http://localhost:8080/order";

     });
	// 전체 선택 버튼
	 $('#allselect').on("click", function(){
		 fncChkedAll();
	 });
	 
	 function fncChkedAll(){
		    var chkAll = $("input[name=checkList]");
		    var chkVal = $("input[name=checkList]");
		    if(chkAll.is(":checked")){
		        $(chkVal).prop("checked",false);
		    } else {
		        $(chkVal).prop("checked",true);
		    }

		}
		
	 
	// 삭제 누를 때 
	$('#delete').on("click", function(){
		// 선택된 check box 개수
		let checkedboxLength=$("input[name='checkList']:checked").length;
		let checkboxLength=$("input[name='checkList']").length;
		let checkData = new Array();
		let tdArr = new Array();
		let trArr = new Array();
		let checkedbox = $("input[name='checkList']:checked");
		let checkbox = $("input[name='checkList']");



		console.log(tdArr);
		console.log(checkboxLength);
		// 체크박스 선택 유무 체크
		if(checkedbox.val() == null){
			alert("목록을 선택해 주세요.")
		}
		else{


			
			let chk_arr = [];
			
			$("input[name='checkList']:checked").each(function(){
				chk_arr.push($(this).val()); // push: 배열에 값 삽입
			});
			
			for(i=0; i<checkedboxLength; i++ ){
		
				let chk= chk_arr[i];
				alert(chk)
				$.ajax({
					  method : 'POST',
				      url : '/requestDelete',
				      data : { 'del_rno' : chk },
				      success:function(result){
				    	  alert("ok");
				    }, error : function() {
				 		console.log("error");
				 	}
				  });
				//출력
				console.log(chk_arr);
				 window.location.href = "http://localhost:8080/order";
				 
			}
	
		}
	});
	 
	// 발주 부턴 누를때
	$(document).on("click", "button[name='order']",function(){
		// 선택된 check box 개수
		let checkedboxLength=$("input[name='checkList']:checked").length;
		let checkboxLength=$("input[name='checkList']").length;
		let checkData = new Array();
		let tdArr = new Array();
		let trArr = new Array();
		let checkedbox = $("input[name='checkList']:checked");
		let checkbox = $("input[name='checkList']");

	
		checkedbox.each(function(i){
			
			let tr = checkedbox.parent().parent().eq(i);
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
		// 체크박스 선택 유무 체크
		if(checkedbox.val() == null){
			alert("목록을 선택해 주세요.")
		}
		else{
			let checkboolean = true;
			for(i=0; i<checkedboxLength; i++){
				
				if(tdArr[0]==tdArr[i]){
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

				//출력
				console.log(chk_arr);
				//document.getElementById('result').innerText = chk_arr;
				window.location = "http://localhost:8080/A?chk_arr="+chk_arr+"";
				//alert("발주신청페이지"); 
				
			}else{
				alert("같은 공급회사를 선택해 주세요")
			}
		}

	});
	
	
});