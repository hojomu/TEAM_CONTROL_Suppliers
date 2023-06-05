<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- headerSidebar jsp -->
<%@ include file="shipment_header.jsp" %>

<!-- 본문 내용 -->
<main id="main" class="main">

<div class="shipment_tablelist_box">

<div class="shipment_search_date">
수주일자
<input type="date" class="shipment_search_date_input">
-
납기일자
<input type="date" class="shipment_search_date_input">
</div>

<div class="shipment_search_text">
납품처
<input type="text" class="shipment_search_text_input" placeholder="search...">
<button class="shipment_search_text_button">검색</button>
</div>

		  <div class="card">
            <div class="card-body">
            <div class="shipment_table_header">
            
            <div class="shipment_table_header_day">
			<button class="shipment_table_header_leftbnt">&lt;</button>
			<div class="shipment_table_header_today">2023년-6월-02일</div>
			<button class="shipment_table_header_rightbnt">&gt;</button>
			</div>
			
			<button class="shipment_table_header_orderbnt">출하요청서 등록</button>
			</div>
              <!-- <h5 class="card-title">shipment</h5> -->
              
              <div class="shipment_table_box">
              <!-- Bordered Table -->
              <table class="table table-bordered">
              
                <thead class="shipment_table_thead">
                  <tr>
                    <th scope="col"><div>no</div></th>
                    <th scope="col"><div>수주일자</div></th>
                    <th scope="col"><div>납기일자</div></th>
                    <th scope="col"><div>남품처</div></th>
                    <th scope="col"><div>총 액</div></th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>그린병원</td>
                    <td>369,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>숨병원</td>
                    <td>33,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>호조무병원</td>
                    <td>66,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>영일이병원</td>
                    <td>99,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>1</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                  <tr>
                    <th scope="row"><div>10</div></th>
                    <td>2023-05-25</td>
                    <td>2023-06-01</td>
                    <td>폴병원</td>
                    <td>55,000,000원</td>
                  </tr>
                </tbody>
              </table>
              </div>
              <!-- End Bordered Table -->
            </div>
          </div>


</div>

<!--         <a class="nav-link collapsed" href="/shipment_detail">
          <span>조회디테일</span>
        </a> -->

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

<!--   <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a> -->

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