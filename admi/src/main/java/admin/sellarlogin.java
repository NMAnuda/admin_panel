package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sellarlogin")
public class sellarlogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user_name = request.getParameter("user_name");
        String user_password = request.getParameter("user_password");
        
   
        boolean isTrue = SellerRegController.login(user_name, user_password);
        
        if (isTrue) {
        	List <SellerReg> SellReg = SellerRegController.getAllSellerReg();
        	
        	request.setAttribute("SellReg",SellReg);
        	RequestDispatcher dispatcher = request.getRequestDispatcher("SellerDashBoard.jsp");
        	dispatcher.forward(request, response);

        } else {
        	request.setAttribute("errorMessage", "Invalid username or password. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("sellarlogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}
