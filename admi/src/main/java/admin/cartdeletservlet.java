package admin;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cartdeletservlet")
public class cartdeletservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public cartdeletservlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the cart item ID from the request parameter
        String idParam = request.getParameter("id"); // Ensure the parameter name is "id" from the JSP
        System.out.println("ID parameter received from request: " + idParam); // Log for debugging purposes

        // Validate if the idParam is present
        if (idParam == null || idParam.isEmpty()) {
            System.out.println("ID parameter is null or empty."); // Log
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID parameter is missing or empty.");
            return; // Exit to avoid further processing
        }

        int id;
        try {
            // Try to parse the ID to an integer
            id = Integer.parseInt(idParam);
        } catch (NumberFormatException e) {
            // If parsing fails, send an error response
            System.out.println("ID parameter is not a valid integer.");
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid cart item ID format.");
            return; // Exit method to prevent further processing
        }

        // Call the deleteData method in CartControl to delete the item
        boolean isTrue = CartControl.deleteData(id);

        if (isTrue) {
        	if (isTrue) {
    	        String alertMessage = "Our order is removed!";
    	        response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='cartupdateservlet';</script>");
    	        response.sendRedirect("singalpoduct page.jsp");
    	        // If deletion is successful, show alert and redirect to the cart display page
           
            
            
            
        } else {
            // If deletion fails, show an error message
            String alertMessage = "Failed to delete the item! Please try again.";
            response.setContentType("text/html");
            response.getWriter().println("<script type='text/javascript'>");
            response.getWriter().println("alert('" + alertMessage + "');");
            response.getWriter().println("window.location.href = 'CartDetails.jsp';"); // Redirect back to cart display page
            response.getWriter().println("</script>");
        }
    }
    }
}
