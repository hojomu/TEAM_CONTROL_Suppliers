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


// shipment_order 화면이 시작되자마자 ==> $(document).ready(function(){} 이벤트
var index = 0;


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

var trp="";

// input태그를 생성하기 위한 함수
function inputTag(index){

	trp = "<tr>"+
			"<td><div><input type='text' name='name' class='inputNameClass'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='orderedproduct[" + index + "].product_id' class='inputProductId'></div></td>"+
			"<td><div><input type='text' name='orderedproduct[" + index + "].count' class='inputCountId'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='price' class='inputPriceId'></div></td>" +
			"<td><div><input type='text' style='border: none;' name='tax' class='inputTaxId'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='code' class='inputCodeId'></div></td>" 
			+"</tr>"

	$(".trp").append(trp);
           
}


document.addEventListener("click", function(e) {
    if (!e.target.classList.contains("inputProductId")) {
        var inputNameIdList = document.querySelectorAll(".inputNameClass");
        var inputProductIdList = document.querySelectorAll(".inputProductId");
        /*var inputCountIdList = document.querySelectorAll(".inputCountId");*/
        var inputPriceIdList = document.querySelectorAll(".inputPriceId");
        var inputTaxIdList = document.querySelectorAll(".inputTaxId");
        var inputCodeIdList = document.querySelectorAll(".inputCodeId");

        // 입력 필드에 고객 데이터 채우기
        for (var i = 0; i < inputProductIdList.length; i++) {
            var inputNameId = inputNameIdList[i].value;

            // 데이터 리스트에서 일치하는 고객 찾기
            var product = null;
            var productList = document.querySelectorAll("#productTableBody tr");
            for (var j = 0; j < productList.length; j++) {
                var Pname = productList[j].querySelector("td:first-child").innerText;
                if (Pname === inputNameId) {
                    product = productList[j];
                    break;
                }
            }

            if (product !== null) {
                inputProductIdList[i].value = product.querySelector("td:nth-child(2)").innerText;
                /*inputCountIdList[i].value = product.querySelector("td:nth-child(3)").innerText;*/
                inputPriceIdList[i].value = product.querySelector("td:nth-child(4)").innerText;
                inputTaxIdList[i].value = product.querySelector("td:nth-child(5)").innerText;
                inputCodeIdList[i].value = product.querySelector("td:nth-child(6)").innerText;
            } else {
                // 고객을 찾지 못했을 경우, 입력 필드를 초기화합니다.
                inputProductIdList[i].value = "";
                /*inputCountIdList[i].value = "";*/
                inputPriceIdList[i].value = "";
                inputTaxIdList[i].value = "";
                inputCodeIdList[i].value = "";
            }
        }
    }
});

