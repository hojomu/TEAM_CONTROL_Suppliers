package control.suppliers.model;

import java.util.List;

public class AdminOrderVO {
    private int orderId;
    private String deliveryDate;
    private String orderDate;
    
    private List<OrderedProductVO> orderedProduct;
    
    private String address;
    private String name;
    private String hospital;
    private String email;
    private String phone;
    
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public List<OrderedProductVO> getOrderedProduct() {
		return orderedProduct;
	}
	public void setOrderedProduct(List<OrderedProductVO> orderedProduct) {
		this.orderedProduct = orderedProduct;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHospital() {
		return hospital;
	}
	public void setHospital(String hospital) {
		this.hospital = hospital;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "AdminOrderVO [orderId=" + orderId + ", deliveryDate=" + deliveryDate + ", orderDate=" + orderDate
				+ ", orderedProduct=" + orderedProduct + ", address=" + address + ", name=" + name + ", hospital="
				+ hospital + ", email=" + email + ", phone=" + phone + "]";
	}
	
    
	
}
