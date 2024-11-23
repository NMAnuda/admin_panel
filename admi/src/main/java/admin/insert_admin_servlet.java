package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class insert_admin_servlet
 */
@WebServlet("/insert_admin_servlet")
public class insert_admin_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String admin_email = request.getParameter("admin_email");
		String admin_conNum = request.getParameter("admin_conNum");
		String admin_address = request.getParameter("admin_address");
		

		boolean isTrue;
		
		isTrue=admincontroller.insertdatas(username,password,admin_email,admin_conNum,admin_address);
		
		if(isTrue == true) {
		    String alertMessage="data insert successful";
		    response.getWriter().println("<script> alert('"+alertMessage+"');");
		    response.sendRedirect("login.jsp");
		} else {
			response.getWriter().write("Failed to insert feedback.");
		}
	}

}
