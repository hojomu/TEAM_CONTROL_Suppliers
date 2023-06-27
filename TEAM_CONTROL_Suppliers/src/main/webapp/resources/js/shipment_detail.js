function openPopup() {
  var orderId = document.getElementById("orderIdInput").value;
  var width = 595;  // A4 가로 크기 (픽셀 단위)
  var height = 842; // A4 세로 크기 (픽셀 단위)
  var left = (screen.width / 2) - (width / 2);  // 화면 가운데에 위치
  var top = (screen.height / 2) - (height / 2); // 화면 가운데에 위치
  var options = 'width=' + width + ',height=' + height + ',top=' + top + ',left=' + left;

  var popupUrl = '/PopupDetail?orderId=' + orderId;
  var popupWindow = window.open(popupUrl, 'A4 팝업', options);

  if (popupWindow) {
    popupWindow.onload = function() {
      popupWindow.print();
    };
  } else {
    alert('팝업 차단을 해제해주세요.');
  }
}