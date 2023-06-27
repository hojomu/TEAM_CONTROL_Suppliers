<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- headerSidebar jsp -->
<%@ include file="shipment_header.jsp" %>

<!-- 본문 내용 -->
<main id="main" class="main">
				<div class="card">
		            <div class="card-body">
		            
	
		            <form id="searchForm" action="shipment_order" method="post">
			            <div class="shipment_table_header">
			   
							<table class="CustomerTableSelect">
							    <thead>
							        <tr>
							            <th>Customer Code</th>
							            <th>Name</th>
							            <th>Phone</th>
							            <th>Email</th>
							            <th>Hospital</th>
							            <th>Address</th>
							        </tr>
							    </thead>
							    <tbody>
							        <c:forEach items="${customerList}" var="customer">
							            <tr>
							            	<td style="display: none;">${customer.customer_id}</td>
							                <td style="display: none;">${customer.name}</td>
							                <td style="display: none;">${customer.phone}</td>
							                <td style="display: none;">${customer.email}</td>
							                <td style="display: none;">${customer.hospital}</td>
							                <td style="display: none;">${customer.address}</td>
							            </tr>

							            </c:forEach>
							            
							        	<tr>
							            	<td><input type="text" name="customer_id" id="inputCustomerId"><button id="customerBtn">Select</button></td>
							                <td><input type="text" name="name" id="inputName"></td>
							                <td><input type="text" name="phone" id="inputPhone"></td>
							                <td><input type="text" name="email" id="inputEmail"></td>
							                <td><input type="text" name="hospital" id="inputHospital"></td>
							                <td><input type="text" name="address" id="inputAddress"></td>
							            </tr>
					
							    </tbody>
							</table>
							

							
							<!-- 날짜 입력 -->
				            <div class="shipment_search_date">
								수주일자
								<input type="date" class="shipment_order_date_input" name="order_date" id="order_date">
								-
								납기일자
								<input type="date" class="shipment_order_date_input" name="delivery_date" id="delivery_date">
							</div><!-- 날짜 입력 끝 -->
			            
						</div><!-- shipment_table_header 끝 -->
						

						<input type="hidden" name="order_date">
						<input type="hidden" name="delivery_date">
						<input type="hidden" name="customer_id"> 
		              
		                <!-- shipment_order_table_box -->
 			            <div class="shipment_order_table_box">
			               

						<div></div>
					
			              
			              <!-- Bordered Table -->
							<table class="table table-bordered" id="productTable">
							  <colgroup>
							    <col width="20%" />
							    <col width="20%" />
							    <col width="15%" />
							    <col width="15%" />
							    <col width="15%" />
							    <col width="15%" />
							    <col width="auto" />
							  </colgroup>
							  <thead class="shipment_table_thead">
							    <tr>
							      <th scope="col">
								      <div class="order_showOption">
									           품목명<button id="addButton">추가</button>
									      
								      </div>
							      </th>
							      <th scope="col"><div>품목코드</div></th>
							      <th scope="col"><div>수량</div></th>
							      <th scope="col"><div>판매단가</div></th>
							      <th scope="col"><div>부가세</div></th>
							      <th scope="col"><div>품목코드</div></th>
							    </tr>
							  </thead>

							  
								<tbody id="productTableBody" class="trp">
 							  
 							  			<c:forEach items="${productList}" var="product_list">
							            <tr>
							            	<td style="display: none;">${product_list.name}</td>
							                <td style="display: none;">${product_list.product_id}</td>
							                <td style="display: none;">${product_list.count}</td>
							                <td style="display: none;">${product_list.price}</td>
							                <td style="display: none;">${product_list.tax}</td>
							                <td style="display: none;">${product_list.code}</td>
							            </tr>
							            </c:forEach>


							  </tbody>
			                
							</table>
							
							
							
			              
			            </div><!-- shipment_order_table_box 끝 -->
		              
<!--  		              <div class="shipment_order_sum">
						<div>총수량 : <input type="text" class="shipment_order_amount"></div>
						<div>총 판매가 : <input type="text" class="shipment_order_selling"></div> 
						<div>총 부가세 : <input type="text" class="shipment_order_surtax"></div> 
						<div>총 액 : <input type="text" class="shipment_order_total"></div>
					  </div> -->
					  
				<div class="shipment_order_botton">
					<button class="shipment_order_canclebnt">취소</button>
					<button type="submit" class="shipment_order_registerbnt">등록</button>
				</div>
					  
					  	</form>
		              
		            </div><!-- card-body 끝 -->
	            </div><!-- card 끝 -->
	           
</main><!-- 본문 끝 -->

  
  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version.   -->
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
  <script src="resources/js/shipment_order.js"></script>

</body>
</html>