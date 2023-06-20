<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!-- headerSidebar jsp -->
<%@ include file="admin_header.jsp" %>

   <!-- 본문 내용 -->
   
   <main id="main" class="main">

    <div class="pagetitle">
      <h1>출하 계획표</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">출하 계획표</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

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
	        <h5 class="card-title">출하 계획표 <span>| 오늘</span></h5>
	
	        <table class="table datatable">
	          <thead>
	            <tr>
	              <th id="order-number-column" scope="col"># 주문번호</th>
	              <th id="order-customer-column" scope="col">고객(병원)</th>
	              <th id="order-title-column" scope="col">주문</th>
	              <th id="order-date-column" scope="col">출하 예정일</th>
	              <th id="order-state-column" scope="col">출하 상태</th>
	            </tr>
	          </thead>
	          <tbody>
	          	<c:forEach items="${list}" var="orderList">
	          	  <tr>
	          	    <th scope="row">${orderList.orderId}</th>
	          	    <td>${orderList.hospital}</td>
	          	    <td class="order-product">
	          	    <a href="/detail?orderId=${orderList.orderId}">
		          	    <c:forEach items="${orderList.orderedProduct}" var="orderedProduct">
		          	    ${orderedProduct.product} ,
		          	    </c:forEach>
	          	    </a>
	          	    </td>
	          	    <td>${orderList.deliveryDate}</td>
	          	    <td><span class="badge bg-success">Approved</span></td>
	          	  </tr>
	          	</c:forEach>
	          </tbody>
	        </table>
	        <!-- pagnation 시작 -->
              <ul class="pagination flex-center-align" >
       	        <%-- <c:if test="${paging.prev}">
       	        	<li class="page-item">
						<a class="page-link" href="/adminTable?pageNum=${paging.startPage-1}&amount=${paging.cri.amount}">&laquo;</a>
					</li>
				</c:if>
									
				<!-- begin(1)이 end(10)될 동안 반복(1일 10일 될 동안 반복) -->
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
					<li class="page-item">
				 		<a class="page-link" href="/adminTable?pageNum=${num}&amount=${paging.cri.amount}">${num}</a>
					</li>
				</c:forEach>

				<!-- next(다음)이 true이면 다음버튼 활성화 -->
				<c:if test="${paging.next}">
					<li class="page-item">
						<a class="page-link" href="/adminTable?pageNum=${paging.endPage+1}&amount=${paging.cri.amount}">&raquo;</a>
					</li>
				</c:if> --%>
			  </ul>
              	<!-- pagnation 끝 -->
	        </div>
	        <!-- End Table with hoverable rows -->
	       
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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="resources/js/adminTable.js"></script>

</body>
</html>