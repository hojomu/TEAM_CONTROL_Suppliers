package control.suppliers.model;

import java.util.List;

public class DatePerOrderVO {
	private String product;
	private List<DateOrderAmountVO> dateOrderAmount;
	
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public List<DateOrderAmountVO> getDateOrderAmount() {
		return dateOrderAmount;
	}
	public void setDateOrderAmount(List<DateOrderAmountVO> dateOrderAmount) {
		this.dateOrderAmount = dateOrderAmount;
	}
	@Override
	public String toString() {
		return "DatePerOrderVO [product=" + product + ", dateOrderAmount=" + dateOrderAmount + "]";
	}
	
}
