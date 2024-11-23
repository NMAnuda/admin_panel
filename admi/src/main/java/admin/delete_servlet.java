package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/delete_servlet")
public class delete_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id =request.getParameter("userID");
		boolean isTrue;
		isTrue=admincontroller.deletedata(id);
		if(isTrue==true)
		{
			String alterMessage="data delete successful";
			 response.getWriter().println("<script> alert('"+alterMessage+"');");
			    response.sendRedirect("getservlet");

		}else
		{
			List<model> orderdetails = admincontroller.getById(id);
			request.setAttribute("orderdetails",orderdetails);
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("wrong.jsp");
			
			dispatcher.forward(request,response);
			
		}
	}

}
