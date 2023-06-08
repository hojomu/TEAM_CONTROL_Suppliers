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

                <li><a class="dropdown-item" href="#">오늘</a></li>
                <li><a class="dropdown-item" href="#">이번 달</a></li>
                <li><a class="dropdown-item" href="#">올 해</a></li>
              </ul>
            </div>
            
            <div class="card-body">
              <h5 class="card-title">주문량 <span>| 오늘</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-cart"></i>
                </div>
                <div class="ps-3">
                  <h6>145</h6>
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

                <li><a class="dropdown-item" href="#">오늘</a></li>
                <li><a class="dropdown-item" href="#">이번 달</a></li>
                <li><a class="dropdown-item" href="#">올 해</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">매출액 <span>| 이번 달</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-currency-dollar"></i>
                </div>
                <div class="ps-3">
                  <h6>3,264 만원</h6>
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

                <li><a class="dropdown-item" href="#">오늘</a></li>
                <li><a class="dropdown-item" href="#">이번 주</a></li>
                <li><a class="dropdown-item" href="#">이번 달</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">고객(병원) <span>| 올해</span></h5>

              <div class="d-flex align-items-center">
                <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                  <i class="bi bi-people"></i>
                </div>
                <div class="ps-3">
                  <h6>1244</h6>
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

                <li><a class="dropdown-item" href="#">오늘</a></li>
                <li><a class="dropdown-item" href="#">이번 주</a></li>
                <li><a class="dropdown-item" href="#">이번 달</a></li>
              </ul>
            </div>

            <div class="card-body">
              <h5 class="card-title">물품 별 주문량 <span>/오늘</span></h5>

              <!-- Line Chart -->
              <div id="reportsChart"></div>

              <script>
                document.addEventListener("DOMContentLoaded", function() {
                  new ApexCharts(document.querySelector("#reportsChart"), {
                    series: [{
                      name: '제품A',
                      data: [31, 40, 28, 51, 42, 82, 56],
                    }, {
                      name: '제품B',
                      data: [11, 32, 45, 32, 34, 52, 41]
                    }, {
                      name: '제품C',
                      data: [15, 11, 32, 18, 9, 24, 11]
                    }],
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
                    colors: ['#4154f1', '#2eca6a', '#ff771d'],
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
                      categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                    },
                    tooltip: {
                      x: {
                        format: 'dd/MM/yy HH:mm'
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
              <h5 class="card-title">축적형 막대 그래프</h5>

              <!-- Stacked Bar Chart -->
              <canvas id="stakedBarChart" style="max-height: 400px;"></canvas>
              <script>
                document.addEventListener("DOMContentLoaded", function() {
                  new Chart(document.querySelector('#stakedBarChart'), {
                    type: 'bar',
                    data: {
                      labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월' , '8월'],
                      datasets: [{
                          label: '제품 A',
                          data: [-75, -15, 18, 48, 74 , 30],
                          backgroundColor: 'rgb(255, 99, 132)',
                        },
                        {
                          label: '제품 B',
                          data: [-11, -1, 12, 62, 95 , -40],
                          backgroundColor: 'rgb(75, 192, 192)',
                        },
                        {
                          label: '제품 C',
                          data: [-44, -5, 22, 35, 62 , 30],
                          backgroundColor: 'rgb(255, 205, 86)',
                        },
                      ]
                    },
                    options: {
                      plugins: {
                        title: {
                          display: true,
                          text: '그래프 --- 주석'
                        },
                      },
                      responsive: true,
                      scales: {
                        x: {
                          stacked: true,
                        },
                        y: {
                          stacked: true
                        }
                      }
                    }
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

</body>
</html>