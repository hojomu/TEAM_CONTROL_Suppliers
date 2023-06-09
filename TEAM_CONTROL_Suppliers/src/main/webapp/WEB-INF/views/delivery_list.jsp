<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- headerSidebar jsp -->
<%@ include file="delivery_headerSidebar.jsp" %>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <link href ="resources/css/delivery_list.css" rel="stylesheet"/>

<!-- 본문 내용 -->
  <main id="main" class="main">

    <div class="date-area">
  <!-- 오늘 날짜  -->
  	 <!--  <button class="date-btn back">&lt;</button> -->
      <p class="today_date" id="date"> </p>
  	<!--   <button class="date-btn">&gt;</button> -->
  	  
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

    <!-- Table with hoverable rows -->

    
	<input type="hidden" id="empid" value="${account.employeeId}">
<%-- 	<c:set var="employeeId" value="${account.employeeId}" /> --%>

    <c:forEach items="${list}" var="DeliveryList" >

    <form class="transport_location"  method="post" action="/email">
        <div class="col-12">
            <div class="card overflow-auto">
                <div class="list-body">
                    <ul class="list_top">
                        <li class="num">No.${DeliveryList.orderId}</li>
                        <li class="hos_name">${DeliveryList.hospital}</li>
                        <li class="hos_adress">${DeliveryList.address}</li>
                       <li class="hos_email" data-email="${DeliveryList.email}" style="display: none;">${DeliveryList.email}</li>
                    </ul>

                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th scope="col">품목명</th>
                                <th scope="col">품목코드</th>
                                <th scope="col">수량</th>
                                <th scope="col"></th>
                            </tr>
                        </thead>
                    
                        <tbody class="table_inside">         
     						<c:forEach items="${DeliveryList.orderedProduct}" var="orderedProduct">
                             <tr>      	 
                       			     <td>${orderedProduct.product}</td>
								     <td>${orderedProduct.code}</td>
								     <td>${orderedProduct.count}</td>
							 </tr>
							 </c:forEach> 
                              
                         
                        </tbody>
                    </table>
                    <!-- End Table with hoverable rows -->
                    
                    <ul class="list_button">
                        <li><button type="button"  class="btnStart start" >배송시작</button></li>
                        <li><button type="button" class="btnStop end">배송완료</button></li>
                    </ul>
                </div>
            </div>
        </div>
    </form>

	</c:forEach>

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
 
  <script src="resources/js/delivery_list.js"></script>

</body>
</html>