<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 요청 리스트</title>

<script src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<h4>발주 관리 페이지</h4>
<!-- <form action="list" method="get"> -->
<table border="1">
	<tr>
		<td>구분</td>
		<td>No</td>
		<td>부서</td>
		<td>품번</td>
		<td>품명</td>
		<td>규격</td>
		<td>단위</td>
		<td>회사명</td>
		<td>단가</td>
		<td>현재고량</td>
		<td>안전재고량</td>
		<td>발주량</td>
		<td>담당자</td>
		<td>요청일</td>
		<td>특이사항</td>
		<td>진행상태</td>
	</tr>
	<c:forEach items="${purchaseList}" var="purchaseList" varStatus="abc">
	<tr>
		<td><input type="checkbox" name="checkList" value="${purchaseList.rno}" id="aa"></td>
		<td>${abc.count}</td>
		<td>${purchaseList.dept}</td>
		<td>${purchaseList.medical_supply_code}</td>
		<td>${purchaseList.medical_supplies_name}</td>
		<td>${purchaseList.standard}</td>
		<td>${purchaseList.unit}</td>
		<td>${purchaseList.supplier}</td>
		<td>${purchaseList.unit_price}</td>
		<td>${purchaseList.current_quantity}</td>
		<td>${purchaseList.safety_inventory_quantuty}</td>
		<td>${purchaseList.request_quantity}</td>
		<td>${purchaseList.person_in_charge}</td>
		<td>${purchaseList.date}</td>
		<td>${purchaseList.special_note}</td>
		<td>${purchaseList.progress_status}</td>
	</tr>
	</c:forEach>
</table>
<!-- </form> -->
	
	<button type="button" name="add"> 발주 </button>
	<button type="button" name="del"> 삭제 </button>
	
	<div id="result"></div>
	
<script>

$(document).ready(function(){
	
	$(document).on("click", "button[name='add']",function(){
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
			document.getElementById('result').innerText = chk_arr;
			window.location = "http://localhost:8080/A?chk_arr="+chk_arr+"";
			alert("발주신청페이지"); 
			
		}else{
			alert("같은 공급회사를 선택해 주세요")
		}

		

	
	});
	
	
});

</script>
</body>
</html>