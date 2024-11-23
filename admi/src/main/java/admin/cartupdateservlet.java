package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/cartupdateservlet")
public class cartupdateservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch the data using id and set it as request attributes for the JSP
        int id = Integer.parseInt(request.getParameter("id"));
        
        // Pass id directly as int, as expected by getById method
        List<CartModel> parts = CartControl.getById(id);
        
        request.setAttribute("parts", parts);
        RequestDispatcher dispatcher = request.getRequestDispatcher("UpdateCart.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Fetching the form parameters from the request
            int id = Integer.parseInt(request.getParameter("id"));
            String product_name = request.getParameter("product_name");
            String price = request.getParameter("price");
            String quantity = request.getParameter("quantity");
            String total = request.getParameter("total");

            // Call to update the data in the database
            boolean isUpdated = CartControl.updatedata(id, product_name, price, quantity, total);

            if (isUpdated) {
                response.sendRedirect("insert.jsp?product_name=" + product_name + "&price=" + price + "&quantity=" + quantity + "&total=" + total);
            } else {
                // If update fails, show an error message
                response.setContentType("text/html");
                response.getWriter().println("<script type='text/javascript'>");
                response.getWriter().println("alert('Cart item update failed! Please try again.');");
                response.getWriter().println("window.location.href = 'UpdateCart.jsp?id=" + id + "';"); // Redirect back to update form
                response.getWriter().println("</script>");
            }
        } catch (NumberFormatException e) {
            response.setContentType("text/html");
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('Invalid input! Please check your data.');");
            response.getWriter().println("window.location.href = 'CartAllServlet';"); // Redirect to cart display page on error
            response.getWriter().println("</script>");
        }
    }
}
