<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!-- headerSidebar jsp -->
<%@ include file="admin_header.jsp" %>

   <!-- 본문 내용 -->
   
   <main id="main" class="main">
   
    <div class="pagetitle">
      <h1>물품 재고</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">물품 재고</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    
    <section class="section dashboard">
      <div class="row">
      
        <div class="col-12">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">물품 별 재고</h5>
              
              <table id="stockTable" style="width:100%">
              	<colgroup>
              	  <col width="13%" align="center" valign="middle"/>
              	  <col width="48%" valign="middle"/>
              	  <col width="13%" align="center" valign="middle"/>
              	  <col width="13%" align="center" valign="middle"/>
              	  <col width="13%" align="center" valign="middle"/>
              	</colgroup>
              	<thead>
              	  <tr>
              		<th>코드</th>
              		<th>이름</th>
              		<th class="table-text-center">가격</th>
              		<th class="table-text-center">부가세</th>
              		<th class="table-text-center">재고량</th>
              	  </tr>
              	</thead>
              	<tbody>
              	  <c:forEach items="${stockData}" var="data">
	              	<tr>
	              	  <th>${data.code}</th>
	              	  <td>${data.name}</td>
	              	  <td class="table-text-center">${data.price}</td>
	              	  <td class="table-text-center">${data.tax}</td>
	              	  <td class="table-text-center">${data.count}</td>
	              	</tr>
	              </c:forEach>
              	</tbody>
              	
              </table>
            
            </div>
          </div>
        </div>
      
      
      </div>
    </section>
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