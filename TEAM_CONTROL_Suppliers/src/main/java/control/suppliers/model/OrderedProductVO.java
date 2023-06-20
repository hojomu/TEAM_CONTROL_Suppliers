package control.suppliers.model;

public class OrderedProductVO {
	private int count;
	private String product;
	private String code;
	private int stock;
	private int tax;
	private int price;
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "OrderedProductVO [count=" + count + ", product=" + product + ", code=" + code + ", stock=" + stock
				+ ", tax=" + tax + "]";
	}
	
}
