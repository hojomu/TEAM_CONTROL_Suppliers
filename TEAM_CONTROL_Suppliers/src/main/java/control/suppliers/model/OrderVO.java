package control.suppliers.model;

public class OrderVO {
	
    private int order_id;
    private String order_date;
    private String delivery_date;
    private String address;
    private int customer_id;
    private int maneger_id;
    private int transport_id;
    
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public String getDelivery_date() {
		return delivery_date;
	}
	public void setDelivery_date(String delivery_date) {
		this.delivery_date = delivery_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public int getManeger_id() {
		return maneger_id;
	}
	public void setManeger_id(int maneger_id) {
		this.maneger_id = maneger_id;
	}
	public int getTransport_id() {
		return transport_id;
	}
	public void setTransport_id(int transport_id) {
		this.transport_id = transport_id;
	}
	
}
