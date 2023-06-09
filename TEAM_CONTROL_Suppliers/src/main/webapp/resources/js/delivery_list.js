// 오늘 날짜 불러오기
    var today = new Date();
    var year = today.getFullYear();
    var month = ("0" + (today.getMonth() + 1)).slice(-2);
    var day = ("0" + today.getDate()).slice(-2);
    var dateElement = document.getElementById("date");
    dateElement.innerHTML = year + "년 " + month + "월 " + day + "일";

 // 세션에 저장된 로그인한 사용자의 ID를 JavaScript 변수에 할당
  /*  var loggedInUserId = "${sessionScope.loggedInUserId}"; */
    
    $(document).ready(function() {
    	 var interval = null; // 위치 정보 전송을 위한 인터벌 변수
    	 //var employeeId = "<%= employeeId %>"; // 나중에 로그인 정보 가지고 오면 삭제*/
    	 var employeeId = $("#empid").val(); // 나중에 로그인 정보 가지고 오면 삭제*/
    	 //console.log(employeeId);
  
    	 // 배송 시작 버튼 클릭 이벤트 핸들러
    	    $(".btnStart").click(function() {
    	    	
    	    	 var btn = $(this); // 클릭된 버튼 객체 저장
    	    	    
    	    	   // 이미 클릭된 버튼인 경우 리턴하여 재클릭을 막음
    	    	    if (btn.hasClass("disabled")) {
    	    	      return;
    	    	    }
    	    	    
    	    	    var orderId = $(this).closest(".list-body").find(".num").text().split(".")[1].trim();
    	      
    	    	    // 버튼 비활성화 및 색상 변경
    	    	    btn.addClass("disabled").css("background-color", "grey");
    	    	    
    	      // 위치 정보를 가져오는 함수
    	      function getPosition() {
    	        if (navigator.geolocation) {
    	        	 navigator.geolocation.getCurrentPosition(
    	        	  function(pos) {
    	              var latitude = pos.coords.latitude;
    	              var longitude = pos.coords.longitude;

    	              // 서버에 위치 정보 및 상태 전송
    	              sendLocation(orderId, employeeId, latitude, longitude, "start");
    	            },
    	            function(error) {
    	              // 위치 정보 오류 처리
    	              console.error("위치 정보 오류:", error);
    	            }
    	          );
    	        } else {
    	          console.error("Geolocation이 지원되지 않는 브라우저입니다.");
    	        }
    	      }
    	      
    	      // 서버로 위치 정보 및 상태 전송하는 함수
    	      function sendLocation(orderId, employeeId, latitude, longitude, transferState) {
    	    	
    	    	var trandata={
    	            orderId: orderId,
    	            employeeId: employeeId,
    	            latitude: latitude,
    	            longitude: longitude,
    	            transferState: transferState
        	    }  
    	    	
    	    	console.log(trandata);
    	    	  
    	        $.ajax({
    	          url: "/transport_location", // 서버의 저장 로직을 처리하는 엔드포인트 URL
    	          method: "POST",
    	          data:JSON.stringify(trandata),
    	          contentType: "application/json",
    	          success: function(response) {
    	            console.log("위치 정보 및 상태가 성공적으로 저장되었습니다.");
    	          },
    	          error: function(xhr, status, error) {
    	            console.error("위치 정보 및 상태 저장 중 오류가 발생했습니다:", error);
    	          }
    	        });
    	      }
    	      
    	      // 위치 정보 가져오기 및 서버로 전송
    	      getPosition();
    	      interval = setInterval(getPosition, 5000); // 5초에 한 번씩 위치 정보 전달
    	    });
    	    
    	    // 배송 완료 버튼 클릭 이벤트 핸들러
    	    $(".btnStop").click(function() {
    	    	
    	    	  var btn = $(this); // 클릭된 버튼 객체 저장
    	    	  var email_auth_cd = '';
    	    		
    	    	  // 이미 클릭된 버튼인 경우 리턴하여 재클릭을 막음
    	    	    if (btn.hasClass("disabled")) {
    	    	      return;
    	    	    }
    	    	    
    	      clearInterval(interval); // 위치 정보 전송 멈추기
    	      
    	      var orderId = $(this).closest(".list-body").find(".num").text().split(".")[1].trim();
    	      
    	      var trandata={
    	  	            orderId: orderId,
    	  	            employeeId: employeeId,
    	  	            latitude: null,
    	  	            longitude: null,
    	  	            transferState: "finish"
    	      	    };  
    	      
    	      // 버튼 비활성화 및 색상 변경
    	      btn.addClass("disabled").css("background-color", "grey");
    	      
    	      // 서버에 위치 정보 및 상태 전송
    	      // 위치 정보 및 상태 전송 성공 시 이메일 전송 요청
    	      sendLocation(trandata); 
    	      email(orderId);
    	    });
    	    
    	    // 서버로 위치 정보 및 상태 전송하는 함수
    	    function sendLocation(trandata, orderId) {
    	      $.ajax({
    	        url: "/transport_location", // 서버의 저장 로직을 처리하는 엔드포인트 URL
    	        method: "POST",
    	        data:JSON.stringify(trandata),
    	        contentType: "application/json",
    	        success: function(response) {
    	          console.log("위치 정보 및 상태가 성공적으로 저장되었습니다.");
    	        },
    	        error: function(xhr, status, error) {
    	          console.error("위치 정보 및 상태 저장 중 오류가 발생했습니다:", error);
    	        }
    	       
    	      });
    	      
    	    }
    	    	  
    	 // 이메일 전송 요청 함수
    	    function email(orderId) {   
    	    	var email = document.querySelector('.hos_email').getAttribute('data-email');
    	    	
    	    	var emailData = {
    	    	    email: email,
    	    	    orderId: orderId
    	    	    };
    	 /*   	
    	    	console.log(emailData);*/
    	    	
       	      $.ajax({
    	        url: "/email", // 이메일 전송을 처리하는 엔드포인트 URL
    	        method: "POST",
    	        data: JSON.stringify(emailData),
    	        contentType: "application/json",
    	        success: function(response) {
    	          console.log("이메일이 성공적으로 전송되었습니다.");
    	          email_auth_cd = response;
    	        },
    	        error: function(response) {
    	          console.error("이메일 전송 중 오류가 발생했습니다:", response);
    	        }
    	      });
    	    }
    	  });