<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- headerSidebar jsp -->
<%@ include file="shipment_header.jsp" %>

<!-- 본문 내용 -->
<main id="main" class="main">

			<div class="card">
            <div class="card-body">
            <div class="shipment_table_header">
            
            <div class="shipment_search_date">
			수주일자
			<input type="date" class="shipment_order_date_input">
			-
			납기일자
			<input type="date" class="shipment_order_date_input">
			</div>
			
			<div class="shipment_order_text">
			계약 코드 : <input type="text" class="shipment_order_text_input"> 납품처 : <input type="text" class="shipment_order_text_input"> 납품처 주소 : <input type="text" class="shipment_order_text_input">
            </div>
            
            <div class="shipment_order_text">
			대표 이름 : <input type="text" class="shipment_order_text_input"> 대표 번호 : <input type="text" class="shipment_order_text_input"> 대표 이메일 : <input type="text" class="shipment_order_text_input">
            </div>
            
			</div>
              <!-- <h5 class="card-title">shipment</h5> -->
              
              <div class="shipment_order_table_box">
			  
			   <div id="optionWindow">
			    <div class="product_order_option_searchbox">
			    <input type="text" placeholder="search..." class="product_order_option_search">
			    <button class="product_order_option_searchbnt">검색</button>
			    </div>
					<div class="optionItem">
					  <input type="checkbox" id="productA" value="A 제품"/>
					  <label for="productA"><span>A 제품</span></label>
					</div>
					<div class="optionItem">
					  <input type="checkbox" id="productB" value="B 제품"/>
					  <label for="productB"><span>B 제품</span></label>
					</div>
					<div class="optionItem">
					  <input type="checkbox" id="productC" value="C 제품"/>
					  <label for="productC"><span>C 제품</span></label>
					</div>
					<div class="product_order_option_buttombox">
				    <button class="product_order_checkbnt" onclick="addSelectedProducts()">추가</button>
				    <button class="product_order_cencelbnt" onclick="hideOption()">취소</button>
				    </div>
			  </div>
              
              <!-- Bordered Table -->
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
                    <th scope="col">
                    <div class="order_showOption">
                    	품목명
                    	<button class="showOptionbnt" onclick="showOption()">
                    	<img alt="more" src="resources/img/more.png" width="22px" height="auto" class="order_morebnt">
                    	</button>
                    </div>
                    </th>
                    <th scope="col"><div>품목코드</div></th>
                    <th scope="col"><div>수량</div></th>
                    <th scope="col"><div>판매단가</div></th>
                    <th scope="col"><div>부가세</div></th>
                    <th scope="col"><div>현재고</div></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td ><div id="selectedProducts"></div></td>
                    <td><div>0123</div></td>
                    <td><div><input class="shipment_order_num"></div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                  <tr>
                    <td><div>a제품</div></td>
                    <td><div>0123</div></td>
                    <td><div>100</div></td>
                    <td><div>50</div></td>
                    <td><div>5</div></td>
                    <td><div>50</div></td>
                  </tr>
                </tbody>
              </table>
              </div>
              <!-- End Bordered Table -->
              
              <div class="shipment_order_sum">
				<div>총수량 : <input type="text" class="shipment_order_amount"></div>
				<div>총 판매가 : <input type="text" class="shipment_order_selling"></div> 
				<div>총 부가세 : <input type="text" class="shipment_order_surtax"></div> 
				<div>총 액 : <input type="text" class="shipment_order_total"></div>
			  </div>
              
            </div>
            </div>

<div class="shipment_order_botton">
<button class="shipment_order_canclebnt">취소</button><button class="shipment_order_registerbnt">등록</button>
</div>

</main>
<!-- 본문 끝 -->
  
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
  <script src="resources/js/main.js"></script>
  <script src="resources/js/shipment_order.js"></script>

</body>
</html>