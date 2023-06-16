package control.suppliers.model;

public class ELocationVO {
	private double latitude;
	private double longitude;
	private String getTime;
	private String transferState;
	
	
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
	public String getGetTime() {
		return getTime;
	}
	public void setGetTime(String getTime) {
		this.getTime = getTime;
	}
	public String getTransferState() {
		return transferState;
	}
	public void setTransferState(String transferState) {
		this.transferState = transferState;
	}
	
	
}
