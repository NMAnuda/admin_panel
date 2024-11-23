package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/updateservlet")
public class updateservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{
			
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	String userID=request.getParameter("userID");
		  String username = request.getParameter("username");
	      String email  = request.getParameter("email");
	  

	      
	      boolean isTrue;
	      
			isTrue=admincontroller.updatedata(userID, username, email);
			
			if(isTrue == true) 
			{
				List<model> update = admincontroller.getById(userID);
				request.setAttribute("update", update);
				
			    String alertMessage="data update successful";
			    response.getWriter().println("<script> alert('"+alertMessage+"');");
			    response.sendRedirect("getservlet");
			} else {
			    RequestDispatcher dis2 = request.getRequestDispatcher("wrong.jsp");
			    dis2.forward(request, response);
			
			}
	}

}