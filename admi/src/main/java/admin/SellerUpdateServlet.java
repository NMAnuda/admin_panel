package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher; // Use jakarta.servlet.RequestDispatcher


@WebServlet("/SellerUpdateServlet")
public class SellerUpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	List <SellerReg> SellReg = SellerRegController.getAllSellerReg();
    	
    	request.setAttribute("SellReg",SellReg);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("sellarlogin.jsp");
    	dispatcher.forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	doGet(request, response); 
    
    	
    }

} 