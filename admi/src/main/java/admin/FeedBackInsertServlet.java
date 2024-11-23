package admin;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/FeedBackInsertServlet")
public class FeedBackInsertServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
       
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String f_name = request.getParameter("f_name");
        String f_conNum = request.getParameter("f_conNum");
        String f_email = request.getParameter("f_email");
        String f_feedBack = request.getParameter("f_feedBack");
        
        boolean isSuccess = false; 
       
        try {
            isSuccess = admincontroller.insertFeedback(f_name, f_conNum, f_email, f_feedBack);
        } catch (Exception e) {
            e.printStackTrace(); 
            request.setAttribute("feedbackStatus", "error");
        }

        if (isSuccess) {
            request.setAttribute("feedbackStatus", "success");
            String alertMessage = "Data update successful";
            // Redirect without writing to response
            response.sendRedirect("homepage.jsp?message=" + alertMessage);
        } else {
            request.setAttribute("feedbackStatus", "failed");
            // Forward to an error page or the same page to show failure message
            RequestDispatcher dispatcher = request.getRequestDispatcher("errorpage.jsp");
            dispatcher.forward(request, response);
        }
    }
}

