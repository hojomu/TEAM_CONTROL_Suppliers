package control.suppliers.model;

public class CalendarVO {
	private int transportId;
	private String customerHospital;
	private String deliveryDate;
	
	public int getTransportId() {
		return transportId;
	}
	public void setTransportId(int transportId) {
		this.transportId = transportId;
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
