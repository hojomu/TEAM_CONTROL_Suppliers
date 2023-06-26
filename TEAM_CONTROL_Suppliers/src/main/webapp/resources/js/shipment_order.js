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

/*var pname="";*/
//var pid=""; // 품목코드
//var cnt=""; // 수량
/*var opid="";
var oid="";
var pnum="";*/
var trp="";
//var opid="";
//var oid="";

// input태그를 생성하기 위한 함수
function inputTag(index){

/*	pname = "<input type='text' name='orderedproduct[" + index + "].name' class='inputNameClass'" + ">";*/
//	pid = "<input type='text' style='border: none;' name='orderedproduct[" + index + "].product_id' class='inputNameClass'" + ">";
//	cnt = "<input type='text' name='orderedproduct[" + index + "].count' class='inputNameClass'" + ">";
/*	opid = "<input type='text' name='orderedproduct[" + index + "].price' class='inputNameClass'" + ">";
	oid = "<input type='text' name='orderedproduct[" + index + "].tax' class='inputNameClass'" + ">";
	pnum = "<input type='text' name='orderedproduct[" + index + "].code' class='inputNameClass'" + ">";*/
	trp = "<tr>"+
			"<td><div><input type='text' name='name' class='inputNameClass'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='orderedproduct[" + index + "].product_id' class='inputProductId'></div></td>"+
			"<td><div><input type='text' name='orderedproduct[" + index + "].count' class='inputCount'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='price' class='inputPriceId'></div></td>" +
			"<td><div><input type='text' style='border: none;' name='tax' class='inputTaxId'></div></td>"+ 
			"<td><div><input type='text' style='border: none;' name='code' class='inputCodeId'></div></td>" 
			+"</tr>"

//	opid = "<input type='text' name='orderedproduct[" + index + "].ordered_product_id'" + ">";
//	oid = "<input type='text' name='orderedproduct[" + index + "].order_id'" + ">";
	
/*	console.log(pname);*/
//	console.log(pid);
//	console.log(cnt);
/*	console.log(opid);
	console.log(oid);
	console.log(pnum);*/
	
/*	$("#pname").append(pname);*/
//	$(".pid").append(pid);
//	$(".cnt").append(cnt);
/*	$("#opid").append(opid);
	$("#oid").append(oid);
	$("#pnum").append(pnum);*/
	$(".trp").append(trp);
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

//inputCount 클래스의 모든 요소를 가져오기
const inputCounts = document.querySelectorAll('.inputCount');

// shipment_order_amount 클래스에 값을 입력하는 함수
function setShipmentOrderAmount() {
  let totalAmount = 0;

  // inputCount 클래스의 각 요소를 순회하며 값을 합산
  inputCounts.forEach((count) => {
    const value = parseInt(count.value);
    if (!isNaN(value)) {
      totalAmount += value;
    }
  });

  // shipment_order_amount 클래스에 합산된 값을 입력
  const shipmentOrderAmount = document.querySelector('.shipment_order_amount');
  shipmentOrderAmount.value = totalAmount;
}

// 마우스로 아무 곳이나 클릭할 때 setShipmentOrderAmount 함수를 호출하여 값 입력
document.addEventListener('click', setShipmentOrderAmount);





document.addEventListener("click", function(e) {
    if (!e.target.classList.contains("inputNameClass")) {
        var inputNameId = document.querySelector(".inputNameClass").value;
        var inputProductId = document.querySelector(".inputProductId");
        var inputPriceId = document.querySelector(".inputPriceId");
        var inputTaxId = document.querySelector(".inputTaxId");
        var inputCodeId = document.querySelector(".inputCodeId");

        
        
        // 데이터 리스트에서 일치하는 고객 찾기
        var product = null;
        var productList = document.querySelectorAll("table tbody tr");
        for (var i = 0; i < productList.length; i++) {
            var Pname = productList[i].querySelector("td:first-child").innerText;
            if (Pname === inputNameId) {
                product = productList[i];
                break;
            }
        }

        // 입력 필드에 고객 데이터 채우기
        if (product !== null) {
            inputProductId.value = product.querySelector("td:nth-child(2)").innerText;
            inputPriceId.value = product.querySelector("td:nth-child(4)").innerText;
            inputTaxId.value = product.querySelector("td:nth-child(5)").innerText;
            inputCodeId.value = product.querySelector("td:nth-child(6)").innerText;
        } else {
            // 고객을 찾지 못했을 경우, 입력 필드를 초기화합니다.
            inputProductId.value = "";
            inputPriceId.value = "";
            inputTaxId.value = "";
            inputCodeId.value = "";
        }
    }
});


