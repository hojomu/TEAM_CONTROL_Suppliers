<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- headerSidebar jsp -->
<%@ include file="delivery_headerSidebar.jsp" %>

	<!-- managercheckdetail css -->
	<link rel="stylesheet" href="/resources/css/customerinput.css"></link>	


<body>
<main id="main" class="main">

<div class="container">
  <div class="item">
	<form>    
  	  <div class="customer_table"> 	
  	    <h2 class="customer_title">고객정보 입력</h2>
		<table>			
		    <colgroup>
		        <col width="25%" />
		        <col width="55%" />		       
		        <%-- <col width="auto" /> --%>
		    </colgroup>
			<tr>
				<td class="title2">병원이름</td>
				<td class="content2">
				   <input type="text" name="hospital">				   
				</td>
			</tr>
			<tr>
				<td>대표자 이름</td>
				<td class="content2"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td class="content2"><input type="text" name="phone"></td>		
			</tr>
			<tr>
				<td>병원 주소</td>
				<td class="content2"><input type="text" name="address"></td>		
			</tr>
			<tr>
				<td>대표 이메일</td>
				<td class="content2"><input type="text" name="email"></td>			
			</tr>	
		</table>
	  </div>
	  <div class="customer_button">
		  <div class="customer_button_item">
				<input type="submit" value="확 인" class="btn-get-started" formaction="CustomerInput" >
		  </div>
	  </div>
    </form>
  </div>
</div>
</main>

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
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="/resources/js/managercheckdetail.js"></script> 
  
</body>
</html>
