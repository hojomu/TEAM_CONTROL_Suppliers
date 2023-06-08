package control.suppliers.model;

import java.util.List;

public class AdminOrderVO {
    private int orderId;
    private String customerHospital;
    private List<OrderedProductVO> orderedProduct;
    private String deliveryDate;

    // 생성자, getter, setter, toString 등의 필요한 메소드들을 추가할 수 있습니다.

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
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

	public List<OrderedProductVO> getOrderedProduct() {
		return orderedProduct;
	}

	public void setOrderedProduct(List<OrderedProductVO> orderedProduct) {
		this.orderedProduct = orderedProduct;
	}

    // toString 등의 필요한 메소드들을 추가할 수 있습니다.
}
