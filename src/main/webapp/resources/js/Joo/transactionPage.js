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
});