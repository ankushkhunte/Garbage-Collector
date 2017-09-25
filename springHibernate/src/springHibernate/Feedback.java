package springHibernate;

public class Feedback {

	int id;
	String userName;
	String vendorName;
	String feedback;
	String description;
	public Feedback() {
		// TODO Auto-generated constructor stub
	}
	public Feedback(int id, String userName, String vendorName, String feedback, String description) {
		super();
		this.id = id;
		this.userName = userName;
		this.vendorName = vendorName;
		this.feedback = feedback;
		this.description = description;
	}
	public Feedback(String userName, String vendorName, String feedback, String description) {
		super();
		
		this.userName = userName;
		this.vendorName = vendorName;
		this.feedback = feedback;
		this.description = description;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getVendorName() {
		return vendorName;
	}
	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	
	
}
