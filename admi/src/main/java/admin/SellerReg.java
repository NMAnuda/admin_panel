package admin;


public class SellerReg {
	private int user_id;
	private String user_name;
	private String user_email;
	private int user_conNum;
	private String user_address;
	private String user_password;
	public SellerReg(int user_id, String user_name, String user_email, int user_conNum, String user_address,
			String user_password) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_email = user_email;
		this.user_conNum = user_conNum;
		this.user_address = user_address;
		this.user_password = user_password;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public int getUser_conNum() {
		return user_conNum;
	}
	public void setUser_conNum(int user_conNum) {
		this.user_conNum = user_conNum;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	

}