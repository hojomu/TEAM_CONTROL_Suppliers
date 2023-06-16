package control.suppliers.model;

public class CalendarVO {
	private int transportId; 
	private int customerId;
	private String customerHospital; // calendarTitle
	private String deliveryDate; // calendarStart
	
	
	public int getTransportId() {
		return transportId;
	}
	public void setTransportId(int transportId) {
		this.transportId = transportId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getCustomerHospital() {
		return customerHospital;
	}
	public void setCustomerHospital(String customerHospital) {
		this.customerHospital = customerHospital;
	}
	
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	

}
