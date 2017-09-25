package springHibernate;

public class VendorRegisrtration {

	
	
	 String vendorName;
	    
     String passWord;
     String email;
     String  mobNo;
     String city;
     int zipCode;
     
    
	public VendorRegisrtration(){
		
	}
   public VendorRegisrtration(String vendorName){
	this.vendorName = vendorName;
	}
	

	public VendorRegisrtration(String vendorName, String passWord, String email, String mobNo, String city,
			int pinCode) {
		super();
		this.vendorName = vendorName;
		this.passWord = passWord;
		this.email = email;
		this.mobNo = mobNo;
		this.city = city;
		this.zipCode = pinCode;
	}
	
	public String getVendorName() {
		return vendorName;
	}


	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}


	public int getZipCode() {
		return zipCode;
	}


	public void setZipCode(int zipCode) {
		this.zipCode = zipCode;
	}


	public String getPassWord() {
		return passWord;
	}
	public void setPassWord(String passWord) {
		this.passWord = passWord;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
     

}
