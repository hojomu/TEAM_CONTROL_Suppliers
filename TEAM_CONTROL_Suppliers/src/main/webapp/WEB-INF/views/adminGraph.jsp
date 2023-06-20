<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- headerSidebar jsp -->
<%@ include file="admin_header.jsp" %>
  
   <!-- 본문 내용 -->
   
   <main id="main" class="main">

    <div class="pagetitle">
      <h1>주문량 관리</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">주문량 관리</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Sales Card -->
        <div class="col-xxl-4 col-md-6">
          <div class="card info-card sales-card">

            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>
                
                <li><a class="dropdown-item" href="/adminGraph?totTurnover=${adm.totTurnover}&customerNum=${adm.customerNum}&dpoOption=${adm.dpoOption}">오늘</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=1&totTurnover=${adm.totTurnover}&customerNum=${adm.customerNum}&dpoOption=${adm.dpoOption}">이번 달</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=2&totTurnover=${adm.totTurnover}&customerNum=${adm.customerNum}&dpoOption=${adm.dpoOption}">올 해</a></li>
              </ul>
            </div>
            
            <div class="card-body">
              <h5 class="card-title">주문량 <span id="orderAmountSpan">${adm.orderAmount}</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-cart"></i>
                </div>
                <div class="ps-3">
                  <h6>${graphData.orderAmount}</h6>
                  <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                </div>
              </div>
            </div>

          </div>
        </div><!-- End Sales Card -->

        <!-- Revenue Card -->
        <div class="col-xxl-4 col-md-6">
          <div class="card info-card revenue-card">

            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&customerNum=${adm.customerNum}&dpoOption=${adm.dpoOption}">이번 달</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=1&customerNum=${adm.customerNum}&dpoOption=${adm.dpoOption}">올해</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">매출액 <span id="turnOverSpan">${adm.totTurnover}</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-currency-dollar"></i>
                </div>
                <div class="ps-3">
                  <h6>${graphData.totTurnover} 만원</h6>
                  <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                </div>
              </div>
            </div>

          </div>
        </div><!-- End Revenue Card -->

        <!-- Customers Card -->
        <div class="col-xxl-4 col-xl-12">

          <div class="card info-card customers-card">

            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=${adm.totTurnover}&dpoOption=${adm.dpoOption}">전체</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=${adm.totTurnover}&customerNum=1&dpoOption=${adm.dpoOption}">올해</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=${adm.totTurnover}&customerNum=2&dpoOption=${adm.dpoOption}">이번 달</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">고객(병원) <span id="customerNumSpan">${adm.customerNum}</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-people"></i>
                </div>
                <div class="ps-3">
                  <h6>${graphData.customerNum}</h6>
                  <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                </div>
              </div>

            </div>
          </div>

        </div><!-- End Customers Card -->
        
        
        <!-- Reports -->
        <div class="col-12">
          <div class="card">

            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=${adm.totTurnover}&customerNum=${adm.customerNum}">이번 달</a></li>
                <li><a class="dropdown-item" href="/adminGraph?orderAmount=${adm.orderAmount}&totTurnover=${adm.totTurnover}&customerNum=${adm.customerNum}&dpoOption=1">올해</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">물품 별 주문량 <span id="dpoOptionSpan">${adm.dpoOption}</span></h5>

              <!-- Line Chart -->
              <div id="reportsChart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", function() {
                	var series = [];
                	var dpoData = ${dpoData};
                	
                	//console.log(dpoData);
                	
                	var settedSeries = [];
                	var settedColors = [];
                	var settedCategories = [];
                	
                	var dpoOption = ${adm.dpoOption};
                	
                	//console.log("dpoOption :" +dpoOption);
                	
                	switch(dpoOption){
                		case 0:
                			// 이번 달의 날짜 수 계산하기
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
                        	//console.log(settedSeries);
                        	//console.log(settedColors);
                        	break;
                        
                		case 1:
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
                        	
                        	break;
                	}
                	
                	
                	

                  new ApexCharts(document.querySelector("#reportsChart"), {
                    series: settedSeries,
                    chart: {
                      height: 350,
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
                  }).render();
                });
              </script>
              <!-- End Line Chart -->

            </div>

          </div>
        </div><!-- End Reports -->
        
        
        <!-- stacked bar card -->
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <div id="stockDetailBox">
              	<a href="/stockDetail">자세히보기</a>
              </div>
            
              <h5 class="card-title">물품 별 재고</h5>

              <!-- Stacked Bar Chart -->
              <canvas id="barChart" style="max-height: 700px;"></canvas>
              <script>
              document.addEventListener("DOMContentLoaded", function() {
            	  var stockData = ${stockData};
            	  
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
                });
              </script>
              <!-- End Stacked Bar Chart -->

            </div>
          </div>
        </div>
        <!-- stacked bar card end -->
        
        
	   </div>
	  </section>
     </main>
   
   
   
   
   
   
  <!-- 본문 끝 -->
  

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="resources/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="resources/vendor/chart.js/chart.umd.js"></script>
  <script src="resources/vendor/echarts/echarts.min.js"></script>
  <script src="resources/vendor/quill/quill.min.js"></script>
  <script src="resources/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="resources/vendor/tinymce/tinymce.min.js"></script>
  <script src="resources/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>
  <script src="resources/js/adminGraph.js"></script>

</body>
</html>