package control.suppliers.model;

import java.util.ArrayList;

public class TransportDataVO {
	private int employeeId;
	private int orderId;
	private String eName;
	private ArrayList<ELocationVO> eLocationVO;
	
	public TransportDataVO() {
        eLocationVO = new ArrayList<>();
    }
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
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
	public ArrayList<ELocationVO> getELocationVO() {
	    return eLocationVO;
	}
	public void seteLocationVO(ArrayList<ELocationVO> eLocationVO) {
		this.eLocationVO = eLocationVO;
	}


	
}
