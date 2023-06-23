package control.suppliers.model;

import java.util.ArrayList;

public class AdminGraphVO {
	private ArrayList<Integer> orderAmount;
	private ArrayList<Integer> totTurnover;
	private ArrayList<Integer> customerNum;
	
	public ArrayList<Integer> getOrderAmount() {
		return orderAmount;
	}
	public void setOrderAmount(ArrayList<Integer> orderAmount) {
		this.orderAmount = orderAmount;
	}
	public ArrayList<Integer> getTotTurnover() {
		return totTurnover;
	}
	public void setTotTurnover(ArrayList<Integer> totTurnover) {
		this.totTurnover = totTurnover;
	}
	public ArrayList<Integer> getCustomerNum() {
		return customerNum;
	}
	public void setCustomerNum(ArrayList<Integer> customerNum) {
		this.customerNum = customerNum;
	}
	@Override
	public String toString() {
		return "AdminGraphVO [orderAmount=" + orderAmount + ", totTurnover=" + totTurnover + ", customerNum="
				+ customerNum + "]";
	}
	
	
}
