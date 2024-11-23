package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;


public class admincontroller {

	private static boolean isSuccesss;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;


	public static boolean  insertdata(String username,String email,String user_conNum,String user_address ,String password)
	{
		boolean isSuccess = false;


		try {
			con=DBconnector.getConnection();
			stmt=con.createStatement();


			String sql = "INSERT INTO new_table (username, email, user_conNum, user_address, password) " + 
		             "VALUES ('" + username + "', '" + email + "', '" + user_conNum + "', '" + user_address + "', '" + password + "')";

			int rs = stmt.executeUpdate(sql);
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess=false;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return isSuccess;
	}


	public static boolean  insertdatas(String username,String password,String admin_email,String admin_conNum ,String admin_address)
	{
	
		boolean isSuccess = false;
		 

		try {
			con=DBconnector.getConnection();
			
			stmt=con.createStatement();


			String sql = "INSERT INTO admin_login (username, password, admin_email, admin_conNum, admin_address) " + 
		             "VALUES ('" + username + "', '" + password + "', '" + admin_email + "', '" + admin_conNum + "', '" + admin_address + "')";

			int rs = stmt.executeUpdate(sql);
			if(rs>0)
			{
				isSuccess = true;
			}
			else
			{
				isSuccess=false;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

		return isSuccess;
	}



	public static List<model> getById (String Id)
	{
		int  convertID= Integer.parseInt(Id);
		ArrayList<model> admin = new ArrayList<>();


		try {
			con= DBconnector.getConnection();
			stmt=con.createStatement();
			String sql = "select * from admin where id= '"+convertID+"'";

			rs = stmt.executeQuery(sql);

			while(rs.next())
			{
				int userID = rs.getInt(1);
				String username =rs.getString(2);
				String email=rs.getString(3);

				model ad=new model(userID,username,email);
				admin.add(ad);
			}


			}catch(Exception e)
		{
				e.printStackTrace();
		}

		return admin;
	}

	public static List<model> getALLadmin()
	{
		ArrayList<model> admins = new ArrayList<>(); 

		try {
			con= DBconnector.getConnection();
			stmt=con.createStatement();
			String sql = "select * from new_table";	
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				int userID = rs.getInt(1);
				String username =rs.getString(2);
				String email=rs.getString(3);
				
				model ad=new model(userID,username,email);
				admins.add(ad);
			}
			
			
			}catch(Exception e)
		{
				e.printStackTrace();
		}
		
		return admins;
		
	}
	public static boolean deletedata(String userID)
	{  
		int convID = Integer .parseInt(userID);
		try
		{
			con= DBconnector.getConnection();
			stmt=con.createStatement();
			String sql="delete from new_table where userID='"+convID+"'";
			int rs=stmt.executeUpdate(sql);
			if(rs>0)
			{
				isSuccesss=true;
				
			}
			else
			{
				isSuccesss=false;
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return isSuccesss;
	}
	

	    
	    public static boolean login(String username, String password) {
	        boolean isSuccess = false;
	        
	        try (Connection con = DBconnector.getConnection()) {
	            String sql = "SELECT * FROM admin_login WHERE username = ? AND password = ?";
	            PreparedStatement stmt = con.prepareStatement(sql);
	            stmt.setString(1, username);
	            stmt.setString(2, password);
	            
	            ResultSet rs = stmt.executeQuery();
	            
	         
	            if (rs.next()) {
	                isSuccess = true;
	            } else {
	                isSuccess = false;
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        
	        return isSuccess;
	    }
	    
	    

	    
	    

	    public static boolean updatedata(String userID,String username,String email )
	    {
	    	try {
	    		con=DBconnector.getConnection();
	    		stmt=con.createStatement();
	    		
	    		
	    		String sql= "UPDATE new_table SET username = '"+username+"', email = '"+email+"'"
	    		           + "WHERE userID= '"+userID+"'";

	    		
	    		
	    		int rs=stmt.executeUpdate(sql);
	    		if(rs>0)
				{
					isSuccesss=true;
					
				}
				else
				{
					isSuccesss=false;
				}
	    		
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	return isSuccesss;
	    }
	    
	    ///////////////////////////////////////////
	 

	    public static boolean insertFeedback(String f_name, String f_conNum, String f_email, String f_feedBack) {
	        boolean isSuccess = false; // Fixed the variable name
	       
	        PreparedStatement pstmt = null;
	        
	        try {
	            // Get database connection
	            con = DBconnector.getConnection();
	            
	            // SQL Query using PreparedStatement
	            String sqlQ = "INSERT INTO feedback (f_name, f_conNum, f_email, f_feedBack) VALUES (?, ?, ?, ?)";
	            pstmt = con.prepareStatement(sqlQ);
	            
	            pstmt.setString(1, f_name);
	            pstmt.setString(2, f_conNum);
	            pstmt.setString(3, f_email);
	            pstmt.setString(4, f_feedBack);
	            
	            int rowsAffected = pstmt.executeUpdate();
	            
	            if (rowsAffected > 0) {
	                isSuccess = true; 
	            }
	            
	        } catch (Exception e) {
	            e.printStackTrace(); 
	        } finally {
	      
	            try {
	                if (pstmt != null) pstmt.close();
	                if (con != null) con.close();
	            } catch (Exception e) {
	                e.printStackTrace(); 
	            }
	        }
	        
	        return isSuccess;
	    }
public static List<feedbackgetmodel> getbyID(String id)
{
	int convertID= Integer.parseInt(id);
	ArrayList<feedbackgetmodel> feedback = new ArrayList<>();
	
	
	
	try{
		con = DBconnector.getConnection();
		stmt=con.createStatement();
		
		String sql ="select*from feedback where f_ID ='"+convertID+"' ";
		
		rs=stmt.executeQuery(sql);
		
		
		while(rs.next())
		{
			int f_ID=rs.getInt(1);
			String f_name = rs.getString(2);
		
			
			feedbackgetmodel fb= new feedbackgetmodel(f_ID,f_name);
			feedback.add(fb);
		}
		
		
	}catch (Exception e)
	{
		e.printStackTrace();
	}
	return feedback;
	
}

public static List<feedbackgetmodel>getallfeed()
{
	ArrayList<feedbackgetmodel> feedbacks = new ArrayList<>();
	

	try{
		con = DBconnector.getConnection();
		stmt=con.createStatement();
		
		String sql ="select*from feedback ";
		
		rs=stmt.executeQuery(sql);
		
		
		while(rs.next())
		{
			int f_ID=rs.getInt(1);
			String f_name = rs.getString(2);
		
			
			feedbackgetmodel fb= new feedbackgetmodel(f_ID,f_name);
			feedbacks.add(fb);;
		}
		
		
	}catch (Exception e)
	{
		e.printStackTrace();
	}
	return feedbacks;
	
}

 		//FAQ insert function 
public static boolean insertFAQ(String faq_content) {
    boolean isSuccess = false; // Fixed the variable name
   
    PreparedStatement pstmt = null;
    
    try {
        // Get database connection
        con = DBconnector.getConnection();
        
        // SQL Query using PreparedStatement
        String sqlQ = "INSERT INTO admin.faq (faq_content) VALUES (?)";
        pstmt = con.prepareStatement(sqlQ);
        
        pstmt.setString(1, faq_content);
        
        
        int rowsAffected = pstmt.executeUpdate();
        
        if (rowsAffected > 0) {
            isSuccess = true; 
        }
        
    } catch (Exception e) {
        e.printStackTrace(); 
    } finally {
  
        try {
            if (pstmt != null) pstmt.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace(); 
        }
    }
    
    return isSuccess;
}
public static List<FAQModel> getbyIDs(String faq_ids)
{
	int convertID= Integer.parseInt(faq_ids);
	ArrayList<FAQModel> feedback = new ArrayList<>();
	
	
	
	try{
		con = DBconnector.getConnection();
		stmt=con.createStatement();
		
		String sql = "SELECT * FROM faq WHERE faq_id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setInt(1, convertID);
		rs = ps.executeQuery();

		
		
		while(rs.next())
		{
			int faq_id=rs.getInt(1);
			String faq_content = rs.getString(2);
		
			
			FAQModel fb= new FAQModel(faq_id,faq_content);
			feedback.add(fb);
		}
		
		
	}catch (Exception e)
	{
		e.printStackTrace();
	}
	return feedback;
	
}

public static List<FAQModel>getallfeed1()
{
	ArrayList<FAQModel> a = new ArrayList<>();
	

	try{
		con = DBconnector.getConnection();
		stmt=con.createStatement();
		
		String sql ="select*from faq ";
		
		rs=stmt.executeQuery(sql);
		
		
		while(rs.next())
		{
			int faq_id=rs.getInt(1);
			String faq_content = rs.getString(2);
		
			
			FAQModel fb= new FAQModel(faq_id,faq_content);
			a.add(fb);;
		}
		
		
	}catch (Exception e)
	{
		e.printStackTrace();
	}
	return a;
	
}


}
