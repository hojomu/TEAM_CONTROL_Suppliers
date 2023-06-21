<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="control.suppliers.model.CalendarVO"%>
<%@page import="control.suppliers.model.CustomerVO"%> 
<%@ page import="java.util.Calendar" %>

<body>

<!-- headerSidebar jsp -->
<%@ include file="delivery_headerSidebar.jsp" %>

<!-- 본문 내용 -->
<main id="main" class="main">

	<link href ="resources/css/delivery_calendar.css" rel="stylesheet"/>
   
  <div class="card">
    <div id='calendar'></div>
  </div>
  
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="resources/js/delivery_calendar.js"></script>
  
  <script>
  document.addEventListener('DOMContentLoaded', function() {
/*   $(function () {
	  
	     var request = $.ajax({
	     url:"/calendar/event", 
	     method: "GET",
	     dataType: "json"
	    });
	     
	     request.done(function (data) {
             console.log(data); 
   */

    	var calendarEl = document.getElementById('calendar');
    	
        var calendar = new FullCalendar.Calendar(calendarEl, {
            // Tool Bar 목록 document : https://fullcalendar.io/docs/toolbar       
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,dayGridWeek,dayGridDay'
            },

            selectable: true,
            selectMirror: true,
            navLinks: true, // can click day/week names to navigate views
           /*  editable: true, //이벤트 편집 기능 */          
            dayMaxEvents: true, // 이벤트가 많을 때"더 보기" 생성
            
            // 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
            events: function (info, successCallback, failureCallback) {
          	  
            	$.ajax({
            	    url: "calendar/event",
            	    method: "GET",
            	    dataType: "json",
            	    success: function(data) {
            	      var events = [];
            	      for (var i = 0; i < data.length; i++) {
            	        var event = {
            	          title: data[i].title,
            	          start: data[i].start
            	        };
            	        events.push(event);
            	      }
            	      successCallback(events);
            	    },
            	    error: function(xhr, status, error) {
            	      failureCallback(error);
            	    }
            	  });
            	}
    		
   	     });
        	calendar.render();
        
        });
        /* 
        	   request.fail(function( jqXHR, textStatus ) {
               alert( "Request failed: " + textStatus );
           }); */

    	</script>
    	
 	
  	   
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

</body>
</html>