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
                
                <li><a class="dropdown-item oaAtag" href="#">오늘</a></li>
                <li><a class="dropdown-item oaAtag" href="#">이번 달</a></li>
                <li><a class="dropdown-item oaAtag" href="#">올 해</a></li>
              </ul>
            </div>
            
            <div class="card-body">
              <h5 class="card-title" style="font-weight: bold; color: #012970;">주문량 <span id="orderAmountSpan"></span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-cart"></i>
                </div>
                <div class="ps-3">
                  <h6 id="orderAmountValue">${graphData.orderAmount}</h6>
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

                <li><a class="dropdown-item toAtag" href="#">이번 달</a></li>
                <li><a class="dropdown-item toAtag" href="#">올 해</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title" style="font-weight: bold; color: #012970;">매출액 <span id="totTurnoverSpan"></span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-currency-dollar"></i>
                </div>
                <div class="ps-3">
                  <h6 id="totTurnoverValue">${graphData.totTurnover}</h6>
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

                <li><a class="dropdown-item cnAtag" href="#">전체</a></li>
                <li><a class="dropdown-item cnAtag" href="#">올 해</a></li>
                <li><a class="dropdown-item cnAtag" href="#">이번 달</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title" style="font-weight: bold; color: #012970;">고객(병원) <span id="customerNumSpan"></span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-people"></i>
                </div>
                <div class="ps-3">
                  <h6 id="customerNumValue">${graphData.customerNum}</h6>
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

                <li><a class="dropdown-item dpoAtag" data-set="0" href="#">이번 달</a></li>
                <li><a class="dropdown-item dpoAtag" data-set="1" href="#">올해</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title" style="font-weight: bold; color: #012970;">물품 별 주문량 <span id="dpoOptionSpan"></span></h5>

              <!-- Line Chart -->
              <div id="reportsChart"></div>

              
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
            
              <h5 class="card-title" style="font-weight: bold; color: #012970;">물품 별 재고</h5>

              <canvas id="barChart" style="max-height: 900px;"></canvas>

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
  <script>
  	var orderDpo = ${dpoData};
  	var stockData = ${stockData};
  </script>
  <!-- Template Main JS File -->
  <script src="resources/js/main.js"></script>
  <script src="resources/js/adminGraph.js"></script>

</body>
</html>