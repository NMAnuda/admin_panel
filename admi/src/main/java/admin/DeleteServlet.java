package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String userIdParam = request.getParameter("user_id"); // Get the parameter as a String
	    System.out.println("Received user_id: " + userIdParam); // Log the received value

	    int user_id;
	    try {
	        user_id = Integer.parseInt(userIdParam); // Try parsing the user_id
	    } catch (NumberFormatException e) {
	        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid user ID format."); // Handle invalid format
	        return; // Exit the method early
	    }

	    boolean isTrue = SellerRegController.deleteData(user_id); // Call the deleteData method

	    if (isTrue) {
	        String alertMessage = "Delete the account!";
	        response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='homepage.jsp';</script>");
	    } else {
	        List<SellerReg> SellReg = SellerRegController.getById(user_id); // Get seller registration details
	        request.setAttribute("SellReg", SellReg);
	        jakarta.servlet.RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp"); // Forward to wrong.jsp
	        dispatcher.forward(request, response);
	    }
	

	}


	}