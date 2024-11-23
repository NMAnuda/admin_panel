package admin;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;


public class feedbackcontoll  {

	private static boolean isSuccesss;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<feedbackgetmodel> feedG() {
	    ArrayList<feedbackgetmodel> feedgetback = new ArrayList<>();

	    try {
	        con = DBconnector.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT * FROM feedback";
	        
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            int f_ID = rs.getInt(1);
	            String f_feedback = rs.getString(5);
	            
	            feedbackgetmodel feedGet2 = new feedbackgetmodel(f_ID, f_feedback);
	            
	            feedgetback.add(feedGet2);
	        }
	        
	    }
	    catch(SQLException e) {
	    	System.out.print("Something went wrong in database error.... " + e);
	    }
	    catch (Exception e) {
	    	System.out.print("Something went wrong in backend error.... " + e);
//	        e.printStackTrace();
	    } finally {
	        // Properly close resources
	        try {
	            if (rs != null) rs.close();
	            if (stmt != null) stmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return feedgetback;
	}
	
	public static int feedCount() {
		int count = 0;

	    try {
	        con = DBconnector.getConnection();
	        stmt = con.createStatement();
	        
	        String sql = "SELECT * FROM feedback";
	        
	        rs = stmt.executeQuery(sql);
	        
	        while (rs.next()) {
	            count++;
	        }
	        
	    }
	    catch(SQLException e) {
	    	System.out.print("Something went wrong in database error.... " + e);
	    }
	    catch (Exception e) {
	    	System.out.print("Something went wrong in backend error.... " + e);
//	        e.printStackTrace();
	    } finally {
	        // Properly close resources
	        try {
	            if (rs != null) rs.close();
	            if (stmt != null) stmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    
	    return count;
	}
	
	
	
}
