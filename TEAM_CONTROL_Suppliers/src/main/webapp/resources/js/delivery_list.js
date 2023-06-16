// 오늘 날짜 불러오기
    var today = new Date();
    var year = today.getFullYear();
    var month = ("0" + (today.getMonth() + 1)).slice(-2);
    var day = ("0" + today.getDate()).slice(-2);
    var dateElement = document.getElementById("date");
    dateElement.innerHTML = year + "년 " + month + "월 " + day + "일";
