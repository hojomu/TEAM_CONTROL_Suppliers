package control.suppliers.model;

public class CalendarVO {
	private int orderId; 	
	private String hospital; // calendarTitle 
	private String delivery_date; // calendarStart
	
/*	private List<CustomerVO> Customer;*/

	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}


}
