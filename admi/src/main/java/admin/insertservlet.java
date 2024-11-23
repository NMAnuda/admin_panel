package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/insertservlet")
public class insertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String user_conNum = request.getParameter("user_conNum");
		String user_address = request.getParameter("user_address");
		String password = request.getParameter("password");
		

		boolean isTrue;
		
		isTrue=admincontroller.insertdata(username,email,user_conNum,user_address,password);
		
		if(isTrue == true) {
		    String alertMessage="data insert successful";
		    response.getWriter().println("<script> alert('"+alertMessage+"');");
		    response.sendRedirect("homepage.jsp");
		} else {
			response.getWriter().write("Failed to insert feedback.");
		}
	}

}
