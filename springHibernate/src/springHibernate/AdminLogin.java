package springHibernate;

public class AdminLogin {
       String userName;
       String password;
	
	public AdminLogin() {
		// TODO Auto-generated constructor stub
	}

	public AdminLogin(String userName, String password) {
		super();
		this.userName = userName;
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}
