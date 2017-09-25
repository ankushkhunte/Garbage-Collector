package springHibernate;

public class Item {
    int itemId;
    String vendorName;
	String itemName;
	String ItemPrice;
	String itemQuantity;
	String area;
	
	
	public Item() {
		// TODO Auto-generated constructor stub
		
		
	}
	

	@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", vendorName=" + vendorName + ", itemName=" + itemName + ", ItemPrice="
				+ ItemPrice + ", itemQuantity=" + itemQuantity + ", area=" + area + "]";
	}


	public Item(int itemId, String itemName, String itemPrice, String itemQuantity, String area,
			 String vendorName) {
		super();
		this.itemId = itemId;
		this.itemName = itemName;
		ItemPrice = itemPrice;
		this.itemQuantity = itemQuantity;
		this.area = area;
		this.vendorName = vendorName;
	}
	public Item( String itemName, String itemPrice, String itemQuantity, String area,
			 String vendorName) {
		super();
	
		this.itemName = itemName;
		ItemPrice = itemPrice;
		this.itemQuantity = itemQuantity;
		this.area = area;
		this.vendorName = vendorName;
	}

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return ItemPrice;
	}

	public void setItemPrice(String itemPrice) {
		ItemPrice = itemPrice;
	}

	public String getItemQuantity() {
		return itemQuantity;
	}

	public void setItemQuantity(String itemQuantity) {
		this.itemQuantity = itemQuantity;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getVendorName() {
		return vendorName;
	}

	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}

	

}
