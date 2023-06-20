/**
 * 
 */

window.addEventListener("DOMContentLoaded", function() {
	
  var orderAmountSpan = document.getElementById("orderAmountSpan");
  var turnOverSpan = document.getElementById("turnOverSpan");
  var customerNumSpan = document.getElementById("customerNumSpan");
  var dpoOptionSpan = document.getElementById("dpoOptionSpan");
  
  var oANum = parseInt(orderAmountSpan.textContent);
  var tONum = parseInt(turnOverSpan.textContent);
  var cNum = parseInt(customerNumSpan.textContent);
  var dOANum = parseInt(dpoOptionSpan.textContent);

  if (oANum === 0) {
    orderAmountSpan.textContent = "| 오늘";
  } else if(oANum === 1){
    orderAmountSpan.textContent = "| 이번 달";
  } else {
    orderAmountSpan.textContent = "| 올 해";
  }

  if (tONum === 0) {
	turnOverSpan.textContent = "| 이번 달";
  } else {
	turnOverSpan.textContent = "| 올 해";
  }
  
  if (cNum === 0) {
	  customerNumSpan.textContent = "| 전체";
  } else if(cNum === 1){
	  customerNumSpan.textContent = "| 올 해";
  } else {
	  customerNumSpan.textContent = "| 이번 달";
  }

  if (dOANum === 0) {
	  dpoOptionSpan.textContent = "| 이번 달";
  } else {
	  dpoOptionSpan.textContent = "| 올 해";
  }
  
  
  
  
});