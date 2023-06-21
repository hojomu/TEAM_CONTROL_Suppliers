package control.suppliers.model;

import java.util.List;

public class DeliveryListVO {
	 private int orderId;
	 private String deliveryDate;
/*	 private String customerHospital;
	 private String customerAddress;
	 private String customerEmail;*/
	 private List<OrderedProductVO> orderedProduct;
	 
	 private String address;
	 private String hospital;
	 private String email;

	 
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


		
}
