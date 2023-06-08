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
			수주일자 :
			<span class="shipment_order_confirmation">2023-06-07</span>
			-
			납기일자 :
			<span class="shipment_order_confirmation">2023-06-30</span>
			</div>
			
			<div class="shipment_order_text">
			계약 코드 : <span class="shipment_order_confirmation">01-0607-001</span> 
			납품처 : <span class="shipment_order_confirmation">울산병원</span> 
			납품처 주소 : <span class="shipment_order_confirmation">울산 남구 어쩌고 저쩌고</span> 
            </div>
            
            <div class="shipment_order_text">
			대표 이름 : <span class="shipment_order_confirmation">김수민</span>  
			대표 번호 : <span class="shipment_order_confirmation">010-1234-5678</span>  
			대표 이메일 : <span class="shipment_order_confirmation">abc123@gmail.com</span> 
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
				<div>총수량 : <span>100</span></div>
				<div>총 판매가 : <span>123,000</span></div> 
				<div>총 부가세 : <span>12,300</span></div> 
				<div>총 액 : <span>135,300</span></div>
			  </div>
              
            </div>
            </div>

<div class="shipment_order_botton">
<button class="shipment_order_canclebnt">삭제</button><button class="shipment_order_registerbnt">다운로드</button>
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
  <script src="resources/js/shipment_order.js"></script>

</body>
</html>