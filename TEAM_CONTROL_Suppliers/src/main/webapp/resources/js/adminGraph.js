/**
 * 
 */

var orderAmount = document.getElementById("orderAmountValue");
var totTurnover = document.getElementById("totTurnoverValue");
var customerNum = document.getElementById("customerNumValue");

var orderAmountList = JSON.parse(orderAmount.textContent);
var totTurnoverListBasic = JSON.parse(totTurnover.textContent);
var totTurnoverList = totTurnoverListBasic.map(function(num) {
	  if (num.toString().length > 3) {
	    return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	  } else {
	    return num.toString();
	  }
	});
console.log(totTurnoverList);
var customerNumList = JSON.parse(customerNum.textContent);

var oaAtagList = document.querySelectorAll('.oaAtag');
var toAtagList = document.querySelectorAll('.toAtag');
var cnAtagList = document.querySelectorAll('.cnAtag');
var dpoAtagList = document.querySelectorAll('.dpoAtag');

dpoAtagList.forEach(function(aTag){
	aTag.addEventListener('click', function(event){
		event.preventDefault();
		
		var dayIndex = parseInt(this.dataset.set, 10);
		
		if(dayIndex == 0){
			renderGraph(dayIndex);
			console.log(dayIndex);
		} else if(dayIndex == 1){
			renderGraph(dayIndex);
			console.log(dayIndex);
		}
		
	})
	
})

oaAtagList.forEach(function(aTag){
	aTag.addEventListener('click', function(event){
		event.preventDefault();
		
		if (this.textContent === '오늘') {
	      orderAmountSpan.textContent = "| 오늘";
	      orderAmount.textContent = orderAmountList[0];
	    } else if (this.textContent === '이번 달') {
	      orderAmountSpan.textContent = "| 이번 달";
	      orderAmount.textContent = orderAmountList[1];
	    } else if (this.textContent === '올 해') {
	      orderAmountSpan.textContent = "| 올 해";
	      orderAmount.textContent = orderAmountList[2];
	    }
	})
})

toAtagList.forEach(function(aTag){
	aTag.addEventListener('click', function(event){
		event.preventDefault();
		
		if (this.textContent === '이번 달') {
		  totTurnoverSpan.textContent = "| 이번 달";
		  totTurnover.textContent = totTurnoverList[0]+" 만원";
	    } else if (this.textContent === '올 해') {
	      totTurnoverSpan.textContent = "| 올 해";
	      totTurnover.textContent = totTurnoverList[1]+" 만원";
	    }
	})
})

cnAtagList.forEach(function(aTag){
	aTag.addEventListener('click', function(event){
		event.preventDefault();
		
		if (this.textContent === '전체') {
		  customerNumSpan.textContent = "| 전체";
		  customerNum.textContent = customerNumList[0];
	    } else if (this.textContent === '올 해') {
	      customerNumSpan.textContent = "| 올 해";
	      customerNum.textContent = customerNumList[1];
	    } else if (this.textContent === '이번 달') {
	      customerNumSpan.textContent = "| 이번 달";
	      customerNum.textContent = customerNumList[2];
	    }
	})
})

window.addEventListener("DOMContentLoaded", function() {
	
  var orderAmountSpan = document.getElementById("orderAmountSpan");
  var totTurnoverSpan = document.getElementById("totTurnoverSpan");
  var customerNumSpan = document.getElementById("customerNumSpan");
  var dpoOptionSpan = document.getElementById("dpoOptionSpan");

  orderAmountSpan.textContent = "| 오늘";
  orderAmount.textContent = orderAmountList[0];
  
  totTurnoverSpan.textContent = "| 이번 달";
  totTurnover.textContent = totTurnoverList[0]+" 만원";
  
  customerNumSpan.textContent = "| 전체";
  customerNum.textContent = customerNumList[0];

  dpoOptionSpan.textContent = "| 이번 달";
  
});


