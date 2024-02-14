$(document).ready(function(){
	
	var initBodyHtml;
	
    $('#app').on('click', function() {
        window.print();
    });
    
    function beforePrint(){
    	initBodyHtml = document.body.innerHTML;
    	document.body.innerHTML = document.getElementById('print').innerHTML;
    }
    
    function afterPrint(){
    	document.body.innerHTML = innerHTML;
    }
    
    window.onbeforeprint = beforePrint;
    window.onafterprint = afterPrint;
    
    var supplier = document.getElementById('supplier').value;
    //var email = document.getElementById('email').value;
    //var supplier_person = document.getElementById('supplier_person').value;
    
    $('#email').on('click', function(supplier) { // 이미지 저장 button id

    	const pdf = document.getElementById('print');
    	console.log(supplier); 
    	
    	file = supplier;
    	//저장 영역 div id
    	html2canvas(pdf).then(canvas => {
    		saveImg(canvas.toDataURL('image/png'),""+supplier+".jpg");
    	});
    	
    	console.log(supplier);
        //console.log(email);
        //console.log(supplier_person);
    	
    		const saveImg = (uri, filename) => {
		    let link = document.createElement('a');

		    document.body.appendChild(link);

		    link.href = uri;
		    link.download = filename;
		    link.click();
		    document.body.removeChild(link);
			//pdf파일 만들고 난 후 3초 경과 후 widnow.closes를 호출
		    //mail() 
		}	
   
	   function mail(){
	    	
	    	send = {"supplier":supplier,"email":email,'supplier_person':supplier_person};
	    	
	    	$.ajax({
	    		type : "GET", // method 타입 get
	    		url : "mailsend", // url value
	    		data : send, //  jsno 타입의 send를 컨트롤러로 값을 전달
	    		dataType: 'json',
	    		async : false,
	    		success : function(data) {
	    			console.log(data)
	    			// 업데이트가 성공해서 1의 값이 반환되면 
	    			if(data == 1){
	    				closes();
	    			}
	    		}
	    	})
	    }
    });
   
})