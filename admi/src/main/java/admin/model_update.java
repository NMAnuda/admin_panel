package admin;

public class model_update 

{
private int userID;
private String username;
private String email;
private String user_conNum;
private String user_address;
public model_update(int userID, String username, String email, String user_conNum, String user_address) {
	super();
	this.userID = userID;
	this.username = username;
	this.email = email;
	this.user_conNum = user_conNum;
	this.user_address = user_address;
}
public int getUserID() {
	return userID;
}
public void setUserID(int userID) {
	this.userID = userID;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getUser_conNum() {
	return user_conNum;
}
public void setUser_conNum(String user_conNum) {
	this.user_conNum = user_conNum;
}
public String getUser_address() {
	return user_address;
}
public void setUser_address(String user_address) {
	this.user_address = user_address;
}


}
