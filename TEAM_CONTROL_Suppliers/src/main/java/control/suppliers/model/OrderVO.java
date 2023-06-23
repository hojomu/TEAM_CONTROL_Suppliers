package control.suppliers.model;

import java.util.ArrayList;

public class OrderVO {  
	
    private int order_id;
    private String order_date;
    private String delivery_date;
    private String address;
    private int customer_id;
    private int maneger_id;
    private int transport_id;
    
    private CustomerVO customer; // CustomerVO 모델 추가
    
    private ProductVO product; // ProductVO 모델 추가
    
    private ArrayList<OrderedProductDTO> orderedproduct; // OrderedProductVO 모델 추가
    
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
	
	public CustomerVO getCustomer() {
		return customer;
	}
	
	public void setCustomer(CustomerVO customer) {
		this.customer = customer;
	}
	
	public ProductVO getProduct() {
		return product;
	}
	
	public void setProduct(ProductVO product) {
		this.product = product;
	}
	
	public ArrayList<OrderedProductDTO> getOrderedproduct() {
		return orderedproduct;
	}
	
	public void setOrderedproduct(ArrayList<OrderedProductDTO> orderedproduct) {
		this.orderedproduct = orderedproduct;
	}
	
	@Override
	public String toString() {
		return "OrderVO [order_id=" + order_id + ", order_date=" + order_date + ", delivery_date=" + delivery_date + ", address=" + address
				+ ", customer_id=" + customer_id + ", maneger_id=" + maneger_id + ", transport_id=" + transport_id + 
				", customer=" + customer + ", product=" + product + ", orderedproduct=" + orderedproduct + "]";
	}
	
}
