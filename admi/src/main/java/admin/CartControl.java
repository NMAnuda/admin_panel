package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CartControl {
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert data function
    public static boolean insertdata(String product_name, String price, String quantity, String total) {
        boolean isSuccess = false;

        // Database connection and query execution
        Connection con = null;
        PreparedStatement stmt = null;

        try {
            // 1. Get database connection
            con = DBConnection.getConnection();  // Assumes DatabaseConnection handles the connection

            // 2. SQL query to insert data
            String sql = "INSERT INTO cart (product_name, price, quantity, total) VALUES (?, ?, ?, ?)";
            stmt = con.prepareStatement(sql);

            // 3. Set parameters for the query
            stmt.setString(1, product_name);
            stmt.setString(2, price);
            stmt.setString(3, quantity);
            stmt.setString(4, total);

            // 4. Execute update
            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                isSuccess = true;  // Data successfully inserted
            }

        } catch (SQLException e) {
            e.printStackTrace();  // Handle exceptions
            
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;  // Return success status
    }

    // Get item by ID (with ID as an int)
    public static List<CartModel> getById(int id) {
        ArrayList<CartModel> cart = new ArrayList<>();

        try {
            // DB connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "SELECT * FROM cart WHERE id = " + id; // No need for quotes around id

            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int cartId = rs.getInt(1);
                String product_name = rs.getString(2);
                String price = rs.getString(3);
                String quantity = rs.getString(4);
                String total = rs.getString(5);

                CartModel cm = new CartModel(cartId, product_name, price, quantity, total);
                cart.add(cm);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return cart;
    }

    // Get all data
    public static List<CartModel> getAllCart() {
        ArrayList<CartModel> carts = new ArrayList<>();

        try {
            // DB connection
            con = DBConnection.getConnection();
            stmt = con.createStatement();

            // Query
            String sql = "SELECT * FROM admin.cart ORDER BY id DESC LIMIT 1;";


            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                int id = rs.getInt(1);
                String product_name = rs.getString(2);
                String price = rs.getString(3);
                String quantity = rs.getString(4);
                String total = rs.getString(5);

                CartModel cm = new CartModel(id, product_name, price, quantity, total);
                carts.add(cm);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return carts;
    }

    // Update function
    public static boolean updatedata(int id, String product_name, String price, String quantity, String total) {
        boolean isSuccess = false;

        try {
            // DB connection
            con = DBConnection.getConnection();
            String sql = "UPDATE cart SET product_name = ?, price = ?, quantity = ?, total = ? WHERE id = ?";
            PreparedStatement stmt = con.prepareStatement(sql);

            // Set parameters
            stmt.setString(1, product_name);
            stmt.setString(2, price);
            stmt.setString(3, quantity);
            stmt.setString(4, total);
            stmt.setInt(5, id); // Set the ID

            int rowsAffected = stmt.executeUpdate();

            if (rowsAffected > 0) {
                isSuccess = true; // Data successfully updated
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess; // Return success status
    }

    // Delete function
    public static boolean deleteData(int id) {
        boolean isSuccess = false; 
        Connection con = null; // Declare Connection variable
        PreparedStatement pst = null; // Declare PreparedStatement variable

        try {
            // DB connection
            con = DBConnection.getConnection();

            // SQL query to delete from the cart table
            pst = con.prepareStatement("DELETE FROM cart WHERE id = ?");

            // Set the id parameter
            pst.setInt(1, id);

            // Execute the update
            int rowsAffected = pst.executeUpdate();

            // Check if rows were affected, meaning the delete was successful
            isSuccess = (rowsAffected > 0);

        } catch (Exception e) {
            e.printStackTrace(); // Print stack trace in case of an exception
            isSuccess = false; // Set success to false in case of an exception
        } finally {
            // Close resources
            try {
                if (pst != null) pst.close(); // Close PreparedStatement
                if (con != null) con.close(); // Close Connection
            } catch (SQLException e) {
                e.printStackTrace(); // Handle exception while closing resources
            }
        }

        return isSuccess; // Return the result of the operation
    }

    public static boolean isSuccess() {
        return isSuccess;
    }

    public static void setSuccess(boolean isSuccess) {
        CartControl.isSuccess = isSuccess;
    }

    public static ResultSet getRs() {
        return rs;
    }

    public static void setRs(ResultSet rs) {
        CartControl.rs = rs;
    }
}
