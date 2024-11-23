package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.RequestDispatcher; 


@WebServlet("/SellerRegServlet")
public class SellerRegServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_name = request.getParameter("user_name");
        String user_email = request.getParameter("user_email");
        int user_conNum = Integer.parseInt(request.getParameter("user_conNum")); // Convert to int
        String user_address = request.getParameter("user_address");
        String user_password = request.getParameter("user_password");
        
        boolean isTrue;
        
        isTrue = SellerRegController.insertdata(user_name, user_email, user_conNum, user_address, user_password);
        
        RequestDispatcher dispatcher; // Declare dispatcher
        
        if (isTrue == true) {
            request.setAttribute("registrationStatus", "success");
            dispatcher = request.getRequestDispatcher("SellerUpdateServlet");
        } else {
            request.setAttribute("registrationStatus", "failed");
            dispatcher = request.getRequestDispatcher("sellerRegistration.jsp");
        }
        
        dispatcher.forward(request, response);
    }
}