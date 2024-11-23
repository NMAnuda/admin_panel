package admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnector {
	private static String url="jdbc:mysql://localhost:3306/admin";
	private static String user="root";
	private static String pass="NMas20031014";
	private static Connection con;
	
	public static Connection getConnection() {
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");

		con = DriverManager.getConnection(url,user,pass);
	}catch(Exception e)
	{
		System.out.println("Database not connected");
		e.printStackTrace();
	}
		return con;
	}

}
