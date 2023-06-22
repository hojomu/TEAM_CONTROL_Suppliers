// 오늘 날짜 불러오기
    var today = new Date();
    var year = today.getFullYear();
    var month = ("0" + (today.getMonth() + 1)).slice(-2);
    var day = ("0" + today.getDate()).slice(-2);
    var dateElement = document.getElementById("date");
    dateElement.innerHTML = year + "년 " + month + "월 " + day + "일";

    
 // 세션에 저장된 로그인한 사용자의 ID를 JavaScript 변수에 할당
    var loggedInUserId = "${sessionScope.loggedInUserId}"; 
    
    $(document).ready(function() {
    	 var interval = null; // 위치 정보 전송을 위한 인터벌 변수
    	 var employeeId = 5; // 나중에 로그인 정보 가지고 오면 삭제
    	 
    	 // 배송 시작 버튼 클릭 이벤트 핸들러
    	    $("button.start").click(function() {
    	    	alert("aaaaa")
    	      var orderId = $(this).closest(".list-body").find(".num").text().split(".")[1].trim();
    	      
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
    	    	  
    	        $.ajax({
    	          url: "/transport_location", // 서버의 저장 로직을 처리하는 엔드포인트 URL
    	          method: "POST",
    	          data: JSON.stringify({
    	            orderId: orderId,
    	            employeeId: employeeId,
    	            latitude: latitude,
    	            longitude: longitude,
    	            transferState: transferState
    	          }),
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
    	    $("button.end").click(function() {
    	      clearInterval(interval); // 위치 정보 전송 멈추기
    	      
    	      var orderId = $(this).closest(".list-body").find(".num").text().split(".")[1].trim();
    	      
    	      // 서버에 위치 정보 및 상태 전송
    	      sendLocation(orderId, employeeId, null, null, "finish");
    	    });
    	    
    	    // 서버로 위치 정보 및 상태 전송하는 함수
    	    function sendLocation(orderId, employeeId, latitude, longitude, transferState) {
    	      $.ajax({
    	        url: "/transport_location", // 서버의 저장 로직을 처리하는 엔드포인트 URL
    	        method: "POST",
    	        data: JSON.stringify({
    	          orderId: orderId,
    	          employeeId: employeeId,
    	          latitude: latitude,
    	          longitude: longitude,
    	          transferState: transferState
    	        }),
    	        contentType: "application/json",
    	        success: function(response) {
    	          console.log("위치 정보 및 상태가 성공적으로 저장되었습니다.");
    	        },
    	        error: function(xhr, status, error) {
    	          console.error("위치 정보 및 상태 저장 중 오류가 발생했습니다:", error);
    	        }
    	      });
    	    }
    	  });