/*    var optionWindow = document.getElementById('optionWindow');
    var selectedProductsElement = document.getElementById('selectedProducts');

    function showOption() {
      optionWindow.style.display = 'block';
    }

    function hideOption() {
      optionWindow.style.display = 'none';
    }

    function addSelectedProducts() {
      var selectedProducts = document.querySelectorAll('input[type="checkbox"]:checked');
      var selectedProductNames = Array.from(selectedProducts).map(function(product) {
        return product.value;
      });

      selectedProductsElement.innerText = selectedProductNames.join(', ');

      hideOption();
    } 
    
    $(document).ready(function() {
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
    });*/
function showOption() {
    var optionWindow = document.getElementById("optionWindow");
    optionWindow.classList.remove("hidden");
}