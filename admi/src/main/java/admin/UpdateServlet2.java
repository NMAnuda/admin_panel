package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UpdateServlet")
public class UpdateServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public UpdateServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int user_id = Integer.parseInt(request.getParameter("user_id"));

        // Fetching user details from the form submission
        String user_name = request.getParameter("user_name");
        String user_email = request.getParameter("user_email");
        int user_conNum = Integer.parseInt(request.getParameter("user_conNum")); 
        String user_address = request.getParameter("user_address");
        String user_password = request.getParameter("user_password");

        boolean isTrue = SellerRegController.updateData(user_id, user_name, user_email, user_conNum, user_address, user_password);

        if (isTrue) {
            response.setContentType("text/html");
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Data updated successfully!');");
            response.getWriter().println("window.location.href = 'SellerDashboard.jsp';");
            response.getWriter().println("</script>");
            
            RequestDispatcher dis = request.getRequestDispatcher("SellerRegServlet");
            dis.forward(request, response);
        } else {
            response.setContentType("text/html");
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Data update failed! Please try again.');");
            response.getWriter().println("window.location.href = 'SellerRegistration.jsp';");
            response.getWriter().println("</script>");
            
            RequestDispatcher dis = request.getRequestDispatcher("SellerRegistration.jsp");
            dis.forward(request, response);
		    }
	        
	}
} 