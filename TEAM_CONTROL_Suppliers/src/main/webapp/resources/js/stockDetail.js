/**
 * 
 */

document.addEventListener("DOMContentLoaded", function() {
	var stockAmount = document.querySelectorAll(".stockAmount");
	for (var i = 0; i < stockAmount.length; i++){
		var amount = parseInt(stockAmount[i].textContent);
		
		if(amount < 5){
			stockAmount[i].style.color = "red";
		}
	}
});