package control.suppliers.model;

public class LoginVO {
	private int employeeId;
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private String address;
	private String personalNumber;
	private String hiredDate;
	private String position;
	private String gender;
	private String salary;
	private String picture;
	private String dept;
	
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPersonalNumber() {
		return personalNumber;
	}
	public void setPersonalNumber(String personalNumber) {
		this.personalNumber = personalNumber;
	}
	public String getHiredDate() {
		return hiredDate;
	}
	public void setHiredDate(String hiredDate) {
		this.hiredDate = hiredDate;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	@Override
	public String toString() {
		return "LoginVO [employeeId=" + employeeId + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", email=" + email + ", phone=" + phone + ", address=" + address + ", personalNumber="
				+ personalNumber + ", hiredDate=" + hiredDate + ", position=" + position + ", gender=" + gender
				+ ", salary=" + salary + ", picture=" + picture + ", dept=" + dept + "]";
	}
	
}



