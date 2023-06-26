<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!-- headerSidebar jsp -->
<%@ include file="shipment_header.jsp" %>

<!-- 본문 내용 -->
<main id="main" class="main">
<c:set var="order" value="${OrderDetail[0]}" />
			<div class="card">
            <div class="card-body">
            <div class="shipment_table_header">
            
            <div class="shipment_search_date">
			수주일자 :
			<span class="shipment_order_confirmation">${order.orderDate}</span>
			-
			납기일자 :
			<span class="shipment_order_confirmation">${order.deliveryDate}</span>
			</div>
			
			<div class="shipment_order_text">
			계약 코드 : <span class="shipment_order_confirmation">${order.orderId}</span> 
			
			납품처 : <span class="shipment_order_confirmation">${order.hospital}</span> 
			납품처 주소 : <span class="shipment_order_confirmation">${order.address}</span> 
            </div>
            
            <div class="shipment_order_text">
			대표 이름 : <span class="shipment_order_confirmation">${order.name}</span>  
			대표 번호 : <span class="shipment_order_confirmation">${order.phone}</span>  
			대표 이메일 : <span class="shipment_order_confirmation">${order.email}</span> 
            </div>
            
			</div>
              
              <div class="shipment_order_table_box">

              <!-- Bordered Table   -->
              <table class="table table-bordered">
              
              	<colgroup>
			        <col width="20%" />
			        <col width="20%" />
			        <col width="15%" />
			        <col width="20%" />
			        <col width="20%" />
			        <col width="5%" />
			        <%-- <col width="auto" /> --%>
		        </colgroup>
              
                <thead class="shipment_table_thead">
                  <tr>
                    <th scope="col"><div>품목명</div></th>
                    <th scope="col"><div>품목코드</div></th>
                    <th scope="col"><div>수량</div></th>
                    <th scope="col"><div>판매단가</div></th>
                    <th scope="col"><div>부가세</div></th>
                    <th scope="col"><div>현재고</div></th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="product" items="${product}">
                  <tr>
                    <td><div>${product.product}</div></td>
                    <td><div>${product.code}</div></td>
                    <td><div class="count">${product.count}</div></td>
                    <td><div class="price">${product.price}</div></td>
                    <td><div class="tax">${product.tax}</div></td>
                    <td><div class="stock">${product.stock}</div></td>
                  </tr>
                </c:forEach>
                </tbody>
              </table>
              </div>
              <!-- End Bordered Table -->
              
              <div class="shipment_order_sum">
				<span>총수량 : <span id="totCount" class="shipment_order_confirmation">100</span></span>
				<span>총 판매가 : <span id="totPrice" class="shipment_order_confirmation">123,000</span></span>
				<span>총 부가세 : <span id="totTax" class="shipment_order_confirmation">12,300</span></span>
				<span>총 액 : <span id="totAmount" class="shipment_order_confirmation">135,300</span></span>
			  </div>
              
            </div>
            </div>

<div class="shipment_order_botton">
<button id="cancelBtn" type="button" class="shipment_order_canclebnt">삭제</button>
<button id="Popup_d_Bnt" class="shipment_order_registerbnt" onclick="openPopup()">다운로드</button>
</div>

  <form id="cancelForm" action="/cancelOrder" method="post">
  	<input type="hidden" name="orderId" value="${order.orderId}">
  </form>

<form id="PopupForm" action="/orderPopup" method="get">
  <input type="hidden" id="orderIdInput" name="orderId" value="${order.orderId}">
</form>

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
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="resources/js/main.js"></script>
  <script src="resources/js/adminDetail.js"></script>
  <script src="resources/js/shipment_detail.js"></script>

</body>
</html>