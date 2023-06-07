<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- headerSidebar jsp -->
<%@ include file="delivery_headerSidebar.jsp" %>

	<link href ="resources/css/delivery_list.css" rel="stylesheet"/>
    
<!-- 본문 내용 -->
  <main id="main" class="main">

    <div class="pagetitle">
  <!-- 오늘 날짜  -->
  	  
      <p class="today_date"> 2023년 6월 05일 </p>
  
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

    <!-- Table with hoverable rows -->
	 <div class="col-12">
	  <div class="card overflow-auto">
	
	    
	      <div class="list-body">
	    
	         <!--  <div class="list_top">
	        	<a class="num"> no. 241567 </a>	
	        	<a class="hos_adress"> 울산 남구 돋질로336번길 10 </a>
	        	<a class="hos_name"> 보람병원 </a> 
	          </div> -->
	          
		 	<ul class="list_top">
		 		<li class="num">no. 241567</li>
		 		<li class="hos_name">울산대학교병원</li>
		 		<li class="hos_adress">울산 남구 돋질로336번길 10 </li>
		 	</ul>	
			
	        <table class="table table-hover">
	          <thead>
	            <tr>
	              <th scope="col" >품목명</th>
	              <th scope="col" >품목코드</th>
	              <th scope="col" >수량</th>
	            </tr>
	          </thead>
	          
	          <tbody class="table_inside">
	            <tr>
	              <td>A제품</td>
	              <td>230121</td>
	              <td>50</td>
	            </tr>
	            <tr>
	              <td>B제품</td>
	              <td>230121</td>
	              <td>20</td>
	            </tr>
	            <tr>
	              <td>C제품</td>
	              <td>230121</td>
	              <td>300</td>
	            </tr>
	            <tr>
	              <td>D제품</td>
	              <td>230121</td>
	              <td>100</td>
	            </tr>
	            <tr>
	              <td>E제품</td>
	              <td>230121</td>
	              <td>50</td>
	            </tr>
	            <tr>
	              <td>A제품</td>
	              <td>230121</td>
	              <td>50</td>
	            </tr>
	            <tr>
	              <td>B제품</td>
	              <td>230121</td>
	              <td>20</td>
	            </tr>
	            <tr>
	              <td>C제품</td>
	              <td>230121</td>
	              <td>300</td>
	            </tr>
	            <tr>
	              <td>D제품</td>
	              <td>230121</td>
	              <td>100</td>
	            </tr>
	            <tr>
	              <td>E제품</td>
	              <td>230121</td>
	              <td>50</td>
	            </tr>
	          </tbody>
	        </table>
	        <!-- End Table with hoverable rows -->
	        
	        <ul class="list_button">
		 		<li> <button type="submit" class="start" > 배송시작 </button> </li>
		 		<li> <button type="button" class="end"> 배송완료 </button> </li>
		 	</ul>	

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

</body>
</html>