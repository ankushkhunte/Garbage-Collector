package springHibernate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Registration {
     
     String userName;
    
     String passWord;
     String email;
     String  mobNo;
     String city;
     int pinCode;
     
     public Registration() {
		// TODO Auto-generated method stub

	}
	public Registration( String userName, String passWord, String email, String mobNo, String city,
			int pinCode) {
		super();
	
		this.userName = userName;
		this.passWord = passWord;
		this.email = email;
		this.mobNo = mobNo;
		this.city = city;
		this.pinCode = pinCode;
	}
	
	
//	public int getUserId() {
//		return userId;
//	}
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
	public int getPinCode() {
		return pinCode;
	}
	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}
     
    
	
	
	
}
