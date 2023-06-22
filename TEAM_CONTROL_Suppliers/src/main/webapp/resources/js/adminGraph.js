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
			dpoOptionSpan.textContent = "| 이번 달";
			console.log(dayIndex);
		} else if(dayIndex == 1){
			renderGraph(dayIndex);
			dpoOptionSpan.textContent = "| 올해";
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

var options = {
	  chart: {
	      height: 500,
	      type: 'bar',
	  },
	  dataLabels: {
	      enabled: false
	  },
	  series: [],
	  title: {
	      text: 'Ajax Example',
	  },
	  noData: {
	    text: 'Loading...'
	  }
	}

// 주문량 그래프
var chart = new ApexCharts(document.querySelector("#reportsChart"),options);
chart.render();

function renderGraph(dayIndex) {
	
	var series = [];
	
	var settedSeries = [];
	var settedColors = [];
	var settedCategories = [];
	
	
	if(dayIndex == 0){
    var dpoData = orderDpo.thisMonth;
	//이번달
	var basicDateSetter = dpoData[0].dateOrderAmount[0].date;
	var dateObject = new Date(basicDateSetter);
	var fixedYear = dateObject.getFullYear();
	var fixedMonth = dateObject.getMonth();
	var firstDayOfMonth = new Date(fixedYear, fixedMonth, 1);
	var lastDayOfMonth = new Date(fixedYear, fixedMonth + 1, 0);
	var maxDayOfMonth = lastDayOfMonth.getDate();
	
	console.log(maxDayOfMonth);
	
	
	//series 생성
	for (var i = 0; i < dpoData.length; i++){
		var dataList = [];
		for(var k = 0; k < maxDayOfMonth; k++){
			dataList.push(0);
		}
		
		
		var productData = dpoData[i];
		for(var n = 0; n < productData.dateOrderAmount.length; n++){
			var date = productData.dateOrderAmount[n].date;
			var settedDate = new Date(date).getDate();
			//console.log(settedDate);
			for(var j = 0; j < maxDayOfMonth; j++){
				if((j+1) == settedDate){
					dataList[j] = productData.dateOrderAmount[n].orderAmount;
	
					break;
				}
			}
		}
	
		
		var seriesDataPoint = {
				name: productData.product,
				data: dataList,
		}
		
		settedSeries.push(seriesDataPoint);
	
	    var r = Math.floor(Math.random() * 256);
	    var g = Math.floor(Math.random() * 256);
	    var b = Math.floor(Math.random() * 256);
	  
	    var randomColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
		
		settedColors.push(randomColor);
	};
	//x축 카테고리 생성
	for (var i = 0; i < maxDayOfMonth; i++) {
		  var currentDate = new Date(fixedYear, fixedMonth, i + 2);
		  currentDate.setHours(0, 0, 0, 0); // 시간을 00:00:00:000으로 설정
		  var formattedDate = currentDate.toISOString().substring(0, 10);
		  //console.log(formattedDate);
		  settedCategories.push(formattedDate);
		}
	} else if (dayIndex == 1){
	//일 년
    var dpoData = orderDpo.thisYear;
		
	var basicDateSetter = dpoData[0].dateOrderAmount[0].date;
	var dateObject = new Date(basicDateSetter);
	var fixedYear = dateObject.getFullYear();
	var monthes = 12;
	
	//series 생성
	for (var i = 0; i < dpoData.length; i++){
    	var dataList = [];
		for(var k = 0; k < monthes; k++){
			dataList.push(0);
		}
		
		
		var productData = dpoData[i];
		for(var n = 0; n < productData.dateOrderAmount.length; n++){
			var date = productData.dateOrderAmount[n].date;
			var settedDate = new Date(date).getMonth();
			for(var j = 0; j < monthes; j++){
				if(j == settedDate){
					dataList[j] = productData.dateOrderAmount[n].orderAmount;

    				break;
				}
			}
		}
		
		
		var seriesDataPoint = {
				name: productData.product,
				data: dataList,
		}
		
		settedSeries.push(seriesDataPoint);
		
	    var r = Math.floor(Math.random() * 256);
	    var g = Math.floor(Math.random() * 256);
	    var b = Math.floor(Math.random() * 256);
	  
	    var randomColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
		
		settedColors.push(randomColor);
	};
	//x축 카테고리 생성
	for (var i = 0; i < monthes; i++) {
		  var month = i + 1;
		  var formattedDate = fixedYear + '-' + (month < 10 ? '0' + month : month);
		  settedCategories.push(formattedDate);
		}
	//console.log(settedSeries);
	}	
	
	options = {
        series: settedSeries,
        chart: {
          height: 500,
          type: 'area',
          toolbar: {
            show: false
          },
          zoom: false // 확대 기능 비활성화
        },
        markers: {
          size: 4
        },
        colors: settedColors,
        fill: {
          type: "gradient",
          gradient: {
            shadeIntensity: 1,
            opacityFrom: 0.3,
            opacityTo: 0.4,
            stops: [0, 90, 100]
          }
        },
        dataLabels: {
          enabled: false
        },
        stroke: {
          curve: 'smooth',
          width: 2
        },
        xaxis: {
          type: 'datetime',
          categories: settedCategories
        },
        tooltip: {
          x: {
            format: 'dd/MM/yy'
          },
        }
      };
	
    chart.updateOptions(options);
};

function stockGraph(){
	var settedLabels = []; // x 축 물품명
	  var settedData = []; // 물품 별 재고수
	  var settedBGColor = [];
	  var settedBorderColor = [];
	  
	  for(var i = 0; i < stockData.length; i++){
		  var label = stockData[i].name;
		  var countData = stockData[i].count;
		  settedLabels.push(label);
		  settedData.push(countData);
		  
		  var r = Math.floor(Math.random() * 256);
		  var g = Math.floor(Math.random() * 256);
		  var b = Math.floor(Math.random() * 256);
		  
		  var bgColor = 'rgba(' + r + ', ' + g + ', ' + b + ', 0.2)';
		  var borColor = 'rgb(' + r + ', ' + g + ', ' + b + ')';
		  
		  settedBGColor.push(bgColor);
		  settedBorderColor.push(borColor);
		  
	  }
	  
	  
    new Chart(document.querySelector('#barChart'), {
      type: 'bar',
      data: {
        labels: settedLabels,
        datasets: [{
          label: '재고',
          data: settedData,
          backgroundColor: settedBGColor,
          borderColor: settedBorderColor,
          borderWidth: 1
        }]
      },
      /* options: {
        scales: {
          y: {
            beginAtZero: true
          }
        }
      } */
    });
};

document.addEventListener("DOMContentLoaded", function() {
	
	var startIndex = 0;
	
    var orderAmountSpan = document.getElementById("orderAmountSpan");
    var totTurnoverSpan = document.getElementById("totTurnoverSpan");
    var customerNumSpan = document.getElementById("customerNumSpan");
    var dpoOptionSpan = document.getElementById("dpoOptionSpan");
    
	renderGraph(startIndex);
	stockGraph();

	orderAmountSpan.textContent = "| 오늘";
	orderAmount.textContent = orderAmountList[0];
	  
	totTurnoverSpan.textContent = "| 이번 달";
	totTurnover.textContent = totTurnoverList[0]+" 만원";
	  
	customerNumSpan.textContent = "| 전체";
	customerNum.textContent = customerNumList[0];

	dpoOptionSpan.textContent = "| 이번 달";
	  
});


