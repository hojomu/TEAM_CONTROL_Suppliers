    var optionWindow = document.getElementById('optionWindow');
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