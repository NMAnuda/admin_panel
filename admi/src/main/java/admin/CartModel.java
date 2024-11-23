package admin;

public class CartModel {
	
	private int id;
	private String product_name;
	private String price;
	private String quantity;
	private String total;
	
	public CartModel(int id, String product_name, String price, String quantity, String total) {
		super();
		this.id = id;
		this.product_name = product_name;
		this.price = price;
		this.quantity = quantity;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}
	
	
	
	

}
