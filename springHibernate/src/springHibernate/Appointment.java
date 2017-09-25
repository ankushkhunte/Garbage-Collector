package springHibernate;

public class Appointment {
	

	int appId;
	String userName;
	String fullName;
	String email;
	String mobNo;
	String vendorName;
	String itemName;
	String price;
	String qtyRange;
	String bdate;
	String time;
	String address;
	String vemail;
	String vmobNo;
	
	public Appointment() {
		// TODO Auto-generated constructor stub
	}

	public Appointment(int appId, String userName, String fullName, String email, String mobNo, String vendorName,
			String itemName, String price, String qtyRange, String bdate, String time, String address, String vemail,
			String vmobNo) {
		super();
		this.appId = appId;
		this.userName = userName;
		this.fullName = fullName;
		this.email = email;
		this.mobNo = mobNo;
		this.vendorName = vendorName;
		this.itemName = itemName;
		this.price = price;
		this.qtyRange = qtyRange;
		this.bdate = bdate;
		this.time = time;
		this.address = address;
		this.vemail = vemail;
		this.vmobNo = vmobNo;
	}

	public Appointment(String userName, String fullName, String email, String mobNo, String vendorName,
			String itemName, String price, String qtyRange, String bdate, String time, String address, String vemail,
			String vmobNo) {
		super();
		
		this.userName = userName;
		this.fullName = fullName;
		this.email = email;
		this.mobNo = mobNo;
		this.vendorName = vendorName;
		this.itemName = itemName;
		this.price = price;
		this.qtyRange = qtyRange;
		this.bdate = bdate;
		this.time = time;
		this.address = address;
		this.vemail = vemail;
		this.vmobNo = vmobNo;
	}



	public int getAppId() {
		return appId;
	}

	public void setAppId(int appId) {
		this.appId = appId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQtyRange() {
		return qtyRange;
	}

	public void setQtyRange(String qtyRange) {
		this.qtyRange = qtyRange;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getVemail() {
		return vemail;
	}

	public void setVemail(String vemail) {
		this.vemail = vemail;
	}

	public String getVmobNo() {
		return vmobNo;
	}

	public void setVmobNo(String vmobNo) {
		this.vmobNo = vmobNo;
	}
	

}
