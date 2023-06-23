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
 							    <div class="shipment_order_text">
								        계약 코드 : <input type="text" value="${order_customer.customer_id}" name="customer_id" id="customer_id" class="shipment_order_text_input"> 
								     <button type="submit" formaction="formcustomerbnt" formmethod="get" class="product_order_checkbnt">조회</button>
								        납품처 : <input type="text" value="${order_customer.hospital}" name="hospital" class="shipment_order_text_input"> 
								        납품처 주소 : <input type="text" value="${order_customer.address}" name="address" class="shipment_order_text_input"><br>
								        대표 이름 : <input type="text" value="${order_customer.name}" name="name" class="shipment_order_text_input"> 
								        대표 번호 : <input type="text" value="${order_customer.phone}" name="phone" class="shipment_order_text_input"> 
								        대표 이메일 : <input type="text" value="${order_customer.email}" name="email" class="shipment_order_text_input">
							    </div>
							<!-- 계약자 정보 끝 -->
							
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
						   <div id="optionWindow">
						   
							    <div class="product_order_option_searchbox">
									    <input type="text" id="searchInput" placeholder="search..." class="product_order_option_search keyword" name="keyword" value="${paging.cri.keyword}">
									    <button class="product_order_option_searchbnt">검색</button>
							    </div>
						    
						    	<div class="optionItem_box">
									<!-- for문 시작 -->
 									<c:forEach items="${list}" var="product_list">
										<div class="optionItem">
											<div>${product_list.name}<a href="productDetail?name=${product_list.name}"> +</a></div>
										</div>
									</c:forEach>
									<!-- for문 끝 -->
								</div>
								
								<div class="product_order_option_buttombox">
								    <!-- <button class="product_order_checkbnt">추가</button> -->
								    <button id="addButton">추가</button>
								    <button class="product_order_cencelbnt" id="hideOption">취소</button>
							    </div>
							    
						  </div>  <!-- optionWindow 끝 -->

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
									           품목명
									       <button formaction="formproductbnt" formmethod="get" class="showOptionbnt" id="showOption">
					                    	<img alt="more" src="resources/img/more.png" width="22px" height="auto" class="order_morebnt">
				           				   </button>
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
 							  <tbody id="productTableBody">

							    <tr id="trp">
							      <td>
							      		<div id="pname">
							      			<!-- <input type="text" class="name" id="name" name="name"> -->
							      			${productDetail.name}
							      		</div>
							      </td>
							      <td>
							      		<div id="pid">
							      			<!-- <input type="text" class="product_id" id="product_id" name="orderedproduct[0].product_id"> -->
							      			<%-- <input value="${productDetail.product_id}" name="product_id"> --%>
							      		</div>
							      </td>
							      <td>
							      		<div id="cnt">
							      			<!-- <input class="shipment_order_num count" type="text" id="count" name="orderedproduct[0].count">개 -->
							      		</div>
							      	</td>
							      <td>
							      		<div id="opid">
							      			<!-- <input  type="text" id="price" name="price"> -->
							      			${productDetail.price}
							      		</div>
							      </td>
							      <td>
							      		<div id="oid">
							      			<!-- <input  type="text" id="tax" name="tax"> -->
							      			${productDetail.tax}
							      		</div>
							      </td>
							      <td>
							      		<div id="pnum">
							      			<!-- <input  type="text" id="code" name="code"> -->
							      			${productDetail.code}
							      		</div>
							      </td>
							    </tr>

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
		              
<!-- 		              <div class="shipment_order_sum">
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