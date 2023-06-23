package control.suppliers.model;


public class TransportDataVO {
	private int employeeId;
	private int orderId;
	private String eName;
	private double latitude;
	private double longitude;
	private String transferState;
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
	public double getLatitude() {
		return latitude;
	}
	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}
	public double getLongitude() {
		return longitude;
	}
	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}
	public String getTransferState() {
		return transferState;
	}
	public void setTransferState(String transferState) {
		this.transferState = transferState;
	}
	
	@Override
	public String toString() {
		return "TransportDataVO [employeeId=" + employeeId + ", orderId=" + orderId + ", eName=" + eName + ", latitude="
				+ latitude + ", longitude=" + longitude + ", transferState=" + transferState + "]";
	}
}
