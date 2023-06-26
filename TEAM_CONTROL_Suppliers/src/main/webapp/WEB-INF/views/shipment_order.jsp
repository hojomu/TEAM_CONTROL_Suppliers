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
			   
							<!-- 계약자 정보 -->
<%--  							    <div class="shipment_order_text">
								        계약 코드 : <input type="text" value="${order_customer.customer_id}" name="customer_id" id="customer_id" class="shipment_order_text_input"> 
								     <button type="submit" formaction="formcustomerbnt" formmethod="get" class="product_order_checkbnt">조회</button>
								        납품처 : <input type="text" value="${order_customer.hospital}" name="hospital" class="shipment_order_text_input"> 
								        납품처 주소 : <input type="text" value="${order_customer.address}" name="address" class="shipment_order_text_input"><br>
								        대표 이름 : <input type="text" value="${order_customer.name}" name="name" class="shipment_order_text_input"> 
								        대표 번호 : <input type="text" value="${order_customer.phone}" name="phone" class="shipment_order_text_input"> 
								        대표 이메일 : <input type="text" value="${order_customer.email}" name="email" class="shipment_order_text_input">
							    </div> --%>
							<!-- 계약자 정보 끝 -->

							<table>
							    <thead>
							        <tr>
							            <th>Customer ID</th>
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
<%-- 							            <tr>
							            	<td>${customer.customer_id}</td>
							                <td>${customer.name}</td>
							                <td>${customer.phone}</td>
							                <td>${customer.email}</td>
							                <td>${customer.hospital}</td>
							                <td>${customer.address}</td>
							            </tr> --%>
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
							
							<!-- 계약 코드 : <input type="text"  name="customer_id" id="customer_id" class="shipment_order_text_input">  -->
							
							<script>
							document.getElementById("customerBtn").addEventListener("click", function(e) {
							    e.preventDefault(); // 기본 제출 동작 막기 (submit 동작 막기)
							    var inputCustomerId = document.getElementById("inputCustomerId").value;
							    var inputName = document.getElementById("inputName");
							    var inputPhone = document.getElementById("inputPhone");
							    var inputEmail = document.getElementById("inputEmail");
							    var inputHospital = document.getElementById("inputHospital");
							    var inputAddress = document.getElementById("inputAddress");

							    // 데이터 리스트에서 일치하는 고객 찾기
							    var customer = null;
							    var customerList = document.querySelectorAll("table tbody tr");
							    for (var i = 0; i < customerList.length; i++) {
							        var customerId = customerList[i].querySelector("td:first-child").innerText;
							        if (customerId === inputCustomerId) {
							            customer = customerList[i];
							            break;
							        }
							    }

							    // 입력 필드에 고객 데이터 채우기
							    if (customer !== null) {
							        inputName.value = customer.querySelector("td:nth-child(2)").innerText; // 수정: name 자리에 phone이 들어감
							        inputPhone.value = customer.querySelector("td:nth-child(3)").innerText; // 수정: phone 자리에 name이 들어감
							        inputEmail.value = customer.querySelector("td:nth-child(4)").innerText;
							        inputHospital.value = customer.querySelector("td:nth-child(5)").innerText;
							        inputAddress.value = customer.querySelector("td:nth-child(6)").innerText;
							    } else {
							        // 고객을 찾지 못했을 경우, 입력 필드를 초기화합니다.
							        inputName.value = "";
							        inputPhone.value = "";
							        inputEmail.value = "";
							        inputHospital.value = "";
							        inputAddress.value = "";
							    }
							});

							</script>


							
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
			               
						   <!-- optionWindow -->
<%-- 						   <div id="optionWindow">
						   
							    <div class="product_order_option_searchbox">
									    <input type="text" id="searchInput" placeholder="search..." class="product_order_option_search keyword" name="keyword" value="${paging.cri.keyword}">
									    <button class="product_order_option_searchbnt">검색</button>
							    </div>
						    
						    	<div class="optionItem_box">
									<!-- for문 시작 -->
 									<c:forEach items="${productList}" var="product_list">
										<div class="optionItem">
											<div style="display: none;">${product_list.product_id}</div>
											<div>${product_list.name}</div>
											<div style="display: none;">${product_list.code}</div>
											<div style="display: none;">${product_list.price}</div>
											<div style="display: none;">${product_list.tax}</div>
											<div style="display: none;">${product_list.count}</div>
										</div>
									</c:forEach>
									<!-- for문 끝 -->
								</div>
								
								<div class="product_order_option_buttombox">
								    <!-- <button class="product_order_checkbnt">추가</button> -->
								    <button id="addButton">추가</button>
								    <button class="product_order_cencelbnt" id="hideOption">취소</button>
							    </div>
							    
						  </div> --%>  <!-- optionWindow 끝 -->

						<div><!-- <button id="addButton">추가</button> --></div>
					
			              
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
<!-- 									       <button class="showOptionbnt" id="showOption">
					                    	<img alt="more" src="resources/img/more.png" width="22px" height="auto" class="order_morebnt">
				           				   </button> -->
									      <!-- <button id="addButton">추가</button> -->
									      
								      </div>
							      </th>
							      <th scope="col"><div>품목코드</div></th>
							      <th scope="col"><div>수량</div></th>
							      <th scope="col"><div>판매단가</div></th>
							      <th scope="col"><div>부가세</div></th>
							      <th scope="col"><div>품목코드</div></th>
							    </tr>
							  </thead>
 							  
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
 							 <tbody id="productTableBody" class="trp">
							    
<%-- 							      <td>
							      		<div class="pname">
							      			<!-- <input type="text" class="name" id="name" name="name"> -->
							      			${productDetail.name}
							      			<input type="text" name="name" class="inputNameClass">
							      		</div>
							      </td>
							      <td>
							      		<div class="pid">
							      			<!-- <input type="text" class="product_id" id="product_id" name="orderedproduct[0].product_id"> -->
							      			<input value="${productDetail.product_id}" name="product_id">
							      			<input type="text" style="border: none;" name="orderedproduct[0].product_id" class="inputProductId">
							      		</div>
							      </td>
							      <td>
							      		<div class="cnt">
							      			<!-- <input class="shipment_order_num count" type="text" id="count" name="orderedproduct[0].count">개 -->
							      			<input type="text" name="orderedproduct[0].count" class="inputCountId">
							      		</div>
							      	</td>
							      <td>
							      		<div class="opid">
							      			<!-- <input  type="text" id="price" name="price"> -->
							      			${productDetail.price}
							      			<input type="text" style="border: none;" name="price" class="inputPriceId">
							      		</div>
							      </td>
							      <td>
							      		<div class="oid">
							      			<!-- <input  type="text" id="tax" name="tax"> -->
							      			${productDetail.tax}
							      			<input type="text" style="border: none;" name="tax" class="inputTaxId">
							      		</div>
							      </td>
							      <td>
							      		<div class="pnum">
							      			<!-- <input  type="text" id="code" name="code"> -->
							      			${productDetail.code}
							      			<input type="text" style="border: none;" name="code" class="inputCodeId">
							      		</div>
							      </td> --%>

							  </tbody>
							  
<%-- 							  <tbody>
			                  <tr>
			                    <td><div>${detail.name}</div></td>
			                    <td><div>${detail.code}</div></td>
			                    <td>
				                    <div class="shipment_order_numberbox">
					                    <input class="shipment_order_num">
					                    <p class="shipment_order_n">개</p>
				                    </div>
			                    </td>
			                    <td><div>${detail.price}</div></td>
			                    <td><div>${detail.tax}</div></td>
			                    <td><div>${detail.count}</div></td>
			                  </tr>
			                </tbody> --%>
			                
							</table>
							
			              
			            </div><!-- shipment_order_table_box 끝 -->
		              
 		              <div class="shipment_order_sum">
						<div>총수량 : <input type="text" class="shipment_order_amount"></div>
						<div>총 판매가 : <input type="text" class="shipment_order_selling"></div> 
						<div>총 부가세 : <input type="text" class="shipment_order_surtax"></div> 
						<div>총 액 : <input type="text" class="shipment_order_total"></div>
					  </div>
					  
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