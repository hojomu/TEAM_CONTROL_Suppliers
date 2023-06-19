package control.suppliers.model;

import java.util.ArrayList;

public class TransportDataVO {
	private int eId;
	private int orderId;
	private String eName;
	private ArrayList<ELocationVO> eLocationVO;
	
	public int geteId() {
		return eId;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public ArrayList<ELocationVO> geteLocationVO() {
		return eLocationVO;
	}
	public void seteLocationVO(ArrayList<ELocationVO> eLocationVO) {
		this.eLocationVO = eLocationVO;
	}
	
}
