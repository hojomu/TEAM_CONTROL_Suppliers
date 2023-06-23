/*
$("#openPopup").on("click",function(e){
    e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)
      popup.style.display = "block";
    });

$("#closePopup").on("click",function(e){
    e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)
      popup.style.display = "none";
    });*/

/*	var optionWindow = document.getElementById('optionWindow');
    var selectedProductsElement = document.getElementById('selectedProducts');*/

    $("#showOption").on("click",function(e){
    e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)
      optionWindow.style.display = 'block';
    });

    $("#hideOption").on("click",function(e){
    e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)	
      optionWindow.style.display = 'none';
    });

/*    function addSelectedProducts(e) {
      e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)
      var selectedProducts = document.querySelectorAll('input[type="checkbox"]:checked');
      var selectedProductNames = Array.from(selectedProducts).map(function(product) {
        return product.value;
      });

      selectedProductsElement.innerText = selectedProductNames.join(', ');

      hideOption();
    } */
    
/*    $(document).ready(function() {
    	// 검색 폼 제출 이벤트 처리
    	$('#searchForm').on('submit', function(event) {
    		event.preventDefault(); // 기본 폼 제출 동작 방지
    		
    		var searchInput = $('#searchInput').val(); // 검색어 가져오기
    		
    		// AJAX를 사용하여 검색 결과를 가져옴
    		$.ajax({
    			url: 'search',
    			type: 'GET',
    			data: { name: searchInput },
    			success: function(data) {
    				// 검색 결과를 테이블에 추가
    				$('#productTable tbody').append(data);
    			},
    			error: function() {
    				alert('검색에 실패했습니다.');
    			}
    		});
    	});
    	
    	// 추가 버튼 클릭 이벤트 처리
    	$(document).on('click', '.addButton', function() {
    		var row = $(this).closest('tr'); // 추가 버튼이 속한 행
    		var name = row.find('.productName').text(); // 품목명 가져오기
    		
    		// 추가된 품목을 기준으로 다시 검색
    		$('#searchInput').val(name); // 검색어 설정
    		$('#searchForm').submit(); // 검색 폼 제출
    	});
    });
function showOption() {
    var optionWindow = document.getElementById("optionWindow");
    optionWindow.classList.remove("hidden");
}
*/





// shipment_order 화면이 시작되자마자 ==> $(document).ready(function(){} 이벤트

var index = 0;

/*// 새로운 <tr> 요소 생성
var newRow = document.createElement('tr');
// <td> 요소 생성 및 내용 추가
var productTd = document.createElement('td');
var productDiv = document.createElement('div');*/

// 매개변수(index)를 0으로 던지기 위한 함수
$(document).ready(function(){
	console.log(index);	//0
	// inputTag 호출하고 매개변수로 배열의 index값을 0 던짐
	// <input type='text' name='orderedproduct[0].product_id'>
	// <input type='text' name='orderedproduct[0].ordered_product_id'>
	// 형식으로 input태그가 생성됨.
	inputTag(index);
})

// 추가 버튼(id="addButton")을 클릭하면
$("#addButton").on("click",function(e){
	e.preventDefault(); // 기본 제출 동작 막기 (submit동작 막기)
//	alert("aaaaa")

	index++;	// 추가 버튼을 클릭할 때마다 배열의 index 증가
	console.log(index);
	inputTag(index);
	/* <input type='text' name='orderedproduct[1].product_id'>
	 * <input type='text' name='orderedproduct[1].ordered_product_id'>
	 * <input type='text' name='orderedproduct[2].product_id'>
	 * <input type='text' name='orderedproduct[2].ordered_product_id'>
	 * 형식으로 input태그가 생성되어야 함.
	 * */

})

var pid="";
var cnt="";
/*var trp="";*/
//var opid="";
//var oid="";

// input태그를 생성하기 위한 함수
function inputTag(index){

	pid = "<input type='text' name='orderedproduct[" + index + "].product_id'" + ">";
	cnt = "<input type='text' name='orderedproduct[" + index + "].count'" + ">";
/*	trp = "<tr>"+
			"<td><div><input type='text' name='orderedproduct[" + index + "].product_id'></div></td>"+ 
			"<td><div><input type='text' name='orderedproduct[" + index + "].count'></div></td>"+
			"<td><div><input type='text' name='orderedproduct[" + index + "].product_id'></div></td>"+ 
			"<td><div><input type='text' name='orderedproduct[" + index + "].count'></div></td>" +
			"<td><div><input type='text' name='orderedproduct[" + index + "].product_id'></div></td>"+ 
			"<td><div><input type='text' name='orderedproduct[" + index + "].count'></div></td>" 
			+"</tr>"*/

//	opid = "<input type='text' name='orderedproduct[" + index + "].ordered_product_id'" + ">";
//	oid = "<input type='text' name='orderedproduct[" + index + "].order_id'" + ">";
	
	console.log(trp);
	
	$("#pid").append(pid);
	$("#cnt").append(cnt);
/*	$("#trp").append(trp);*/
//	$("#opid").append(opid);
//	$("#oid").append(oid);
	
	// <div> 요소 생성 및 내용 추가
/*	var divElement = document.createElement('div');
	divElement.innerHTML = pid + cnt;
	
	// <tr> 요소에 <td> 요소 추가
	productTd.appendChild(divElement);
	newRow.appendChild(productTd);
	
	// <tr> 요소를 shipment_order 테이블에 추가
	$("#shipment_order").append(newRow);*/
           
}


$(document).ready(function() {
	  $('#shipment_order_form').submit(function(event) {
	    event.preventDefault(); // 기본 동작 중단
	    
	    var customer_id = $('#customer_id').val();
	    var hospital = $('#hospital').val();
	    var address = $('#address').val();
	    var name = $('#name').val();
	    var phone = $('#phone').val();
	    var email = $('#email').val();
	    
	    $.ajax({
	      url: '/shipment_order',
	      type: 'GET',
	      data: {
	        customer_id: customer_id,
	        hospital: hospital,
	        address: address,
	        name: name,
	        phone: phone,
	        email: email
	      },
	      success: function(response) {
	        // AJAX 요청 성공 시 처리할 로직 작성
	        $('#shipment_order_result').html(response); // 결과를 해당 요소에 추가
	      },
	      error: function(xhr, status, error) {
	        // AJAX 요청 실패 시 처리할 로직 작성
	        console.error(error);
	      }
	    });
	  });
	});



/*function sendData() {
    var orderDate = document.getElementById("order_date").value;
    var deliveryDate = document.getElementById("delivery_date").value;
    var customerId = document.getElementById("customer_id").value;

    document.querySelector('form[name="shipment_order"] input[name="order_date"]').value = orderDate;
    document.querySelector('form[name="shipment_order"] input[name="delivery_date"]').value = deliveryDate;
    document.querySelector('form[name="shipment_order"] input[name="customer_id"]').value = customerId;

    document.querySelector('form[name="shipment_order"]').submit();
  }

  var button = document.querySelector('.product_order_checkbutton');
  button.addEventListener('click', function() {
    sendData();
  });
*/
