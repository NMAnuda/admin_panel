package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FAQServlet")
public class FAQServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String FAQContent = request.getParameter("faq_content");
		
		

		boolean isTrue;
		
		isTrue=admincontroller.insertFAQ(FAQContent);
		
		if(isTrue == true) {
		    String alertMessage="Your question insert successful";
		    response.getWriter().println("<script> alert('"+alertMessage+"');");
		    response.sendRedirect("homepage.jsp");
		} else {
			response.getWriter().write("Failed to insert your question.");
		}
	}

}
