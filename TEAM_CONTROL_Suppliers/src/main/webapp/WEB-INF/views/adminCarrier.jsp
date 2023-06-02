<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- headerSidebar jsp -->
<%@ include file="admin_header.jsp" %>
  
   <!-- 본문 내용 -->
   
   <main id="main" class="main">

    <div class="pagetitle">
      <h1>운반현황</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">운반현황</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">
      	<!-- 왼쪽 카카오맵 -->
      	<div class="col-lg-8">
      		<div class="col-12">
      			<div class="card">
      				<div class="card-body">
              			<h5 class="card-title">지도 <span>| 오늘</span></h5>
              			<div class="mapWrapper">
              				<div id="map" style="width:100%;height:350px;"></div>
              			</div>
              		</div>
      			</div>
      		</div>
      	</div>
      	
      	<!-- 오른쪽 운반자 리스트 -->
      	<div class="col-lg-4">
      		<div class="card">
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
      			
      			<div class="card-body pb-0">
      				<h5 class="card-title">현재 운반중 <span>| 오늘</span></h5>
      				
      				
      			</div>
      		</div>
      	</div>
      	
      	<!-- 아래쪽 오늘 운반 현황 -->
      	<!-- Table with hoverable rows -->
	    <div class="col-12">
	      <div class="card overflow-auto">
	
		    <div class="filter">
		      <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
		      <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
		        <li class="dropdown-header text-start">
		          <h6>Filter</h6>
		        </li>
		
		        <li><a class="dropdown-item" href="#">Today</a></li>
		        <li><a class="dropdown-item" href="#">This Month</a></li>
		        <li><a class="dropdown-item" href="#">This Year</a></li>
		      </ul>
		    </div>
	    
	      <div class="card-body">
	        <h5 class="card-title">운반 상황 <span>| 오늘</span></h5>
	
	        <table class="table table-hover">
	          <thead>
	            <tr>
	              <th scope="col"># 주문번호</th>
	              <th scope="col">고객(병원)</th>
	              <th scope="col">주문</th>
	              <th scope="col">출하 예정일</th>
	              <th scope="col">출하 상태</th>
	            </tr>
	          </thead>
	          <tbody>
	            <tr>
	              <th scope="row">1</th>
	              <td>우리 피부과</td>
	              <td>제품 B 신규 계약</td>
	              <td>2016-05-25</td>
	              <td><span class="badge bg-success">Approved</span></td>
	            </tr>
	            <tr>
	              <th scope="row">2</th>
	              <td>홍 정형외과</td>
	              <td>제품 B 신규 계약</td>
	              <td>2014-12-05</td>
	              <td><span class="badge bg-warning">Pending</span></td>
	            </tr>
	            <tr>
	              <th scope="row">3</th>
	              <td>울산 대학 병원</td>
	              <td>제품 B 신규 계약</td>
	              <td>2011-08-12</td>
	              <td><span class="badge bg-danger">Rejected</span></td>
	            </tr>
	            <tr>
	              <th scope="row">4</th>
	              <td>부산 병원</td>
	              <td>제품 B 신규 계약</td>
	              <td>2012-06-11</td>
	              <td><span class="badge bg-danger">Rejected</span></td>
	            </tr>
	            <tr>
	              <th scope="row">5</th>
	              <td>서울 탑 치과</td>
	              <td>제품 B 신규 계약 Division Officer</td>
	              <td>2011-04-19</td>
	              <td><span class="badge bg-success">Approved</span></td>
	            </tr>
	          </tbody>
	        </table>
	        <!-- End Table with hoverable rows -->
	        </div>
	       
	    </div>
	   </div>  
      
      
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
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapApiKey}"></script>
  <script src="/resources/js/adminCarrier.js" type="text/javascript"></script>

</body>
</html>