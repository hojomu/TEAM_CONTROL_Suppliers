/**
 * 
 */

var countElements = document.getElementsByClassName("count");
var priceElements = document.getElementsByClassName("price");
var taxElements = document.getElementsByClassName("tax");
var stockElements = document.getElementsByClassName("stock");

var totCount = document.getElementById("totCount");
var totPrice = document.getElementById("totPrice");
var totTax = document.getElementById("totTax");
var totAmount = document.getElementById("totAmount");

function calculate(){
	var countArray = Array.from(countElements);
	var priceArray = Array.from(priceElements);
	var taxArray = Array.from(taxElements);
	var stockArray = Array.from(stockElements);
	
	var countValues = countArray.map(function(element){
		return parseInt(element.textContent);
	});
	var priceValues = priceArray.map(function(element){
		return parseInt(element.textContent);
	});
	var taxValues = taxArray.map(function(element){
		return parseInt(element.textContent);
	});
	var stockValues = stockArray.map(function(element){
		return parseInt(element.textContent);
	});
	
	var totCountResult = 0; 
	var totPriceResult = 0; 
	var totTaxResult = 0; 
	var totAmountResult = 0; 
	
	for(var i = 0; i < countValues.length; i++){
		totCountResult += countValues[i];
		totPriceResult += priceValues[i] * countValues[i];
		totTaxResult += taxValues[i] * countValues[i];
		
		totAmountResult += (taxValues[i] * countValues[i]) + (priceValues[i] * countValues[i]);
		
	}
	
	totCount.textContent = totCountResult.toString();
	totPrice.textContent = totPriceResult.toString();
	totTax.textContent = totTaxResult.toString();
	totAmount.textContent = totAmountResult.toString();
	
}

var cancelBtn = document.getElementById("cancelBtn");
var cancelForm = document.getElementById("cancelForm");
cancelBtn.addEventListener("click", function() {
console.log("하이");
cancelForm.submit();
});


calculate();














