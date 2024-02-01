$(document).ready(function(){
	
	
today = new Date();
	
	console.log("today.toISOString() >>>" + today.toISOString());
	today = today.toISOString().slice(0, 10);
	
	console.log("today >>>> " + today);
	bir = document.getElementById("date");
	
	bir.value = today;
	
});