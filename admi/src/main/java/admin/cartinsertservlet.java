package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/cartinsertservlet")
public class cartinsertservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_name = request.getParameter("product_name");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");
        String total = request.getParameter("total");

        boolean isTrue;

      
        isTrue = CartControl.insertdata(product_name, price, quantity, total);

        if (isTrue) {
          
            response.sendRedirect("CartAllServlet"); 
        } else {
      
            request.setAttribute("cartStatus", "failed");
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("insert.jsp");
            dispatcher.forward(request, response);
        }
    }
}
