<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get in Touch</title>
    <link rel="stylesheet" href="CSS/ContactUs.css"> <!-- Link your CSS file here -->
    <jsp:include page="Header.jsp" />
    <script>
        function submitFeedback() {
            document.getElementById('feedbackForm').submit();
        }
    </script>
</head>
<body>
    <div class="container">
        <header>
            <h1>Get in Touch</h1>
            <p class="subtitle">Want to get in touch? We'd love to hear from you. Here's how you can reach us.</p>
        </header>
        
        <div class="contact-options">
            <div class="contact-card">
                <div class="icon">📞</div>
                <h2>Talk to Sales</h2>
                <p>Interested in our software? Just pick up the phone to chat with a member of our sales team.</p>
                <a href="#" class="btn" aria-label="Call sales team">Give us a call!</a>
            </div>
            
            <div class="contact-card">
                <div class="icon">💬</div>
                <h2>Feedback</h2>
                <p>We're here to help! If you have any questions or need assistance, our support team is just a message away.</p>
                <button class="btn" onclick="submitFeedback()">Give us Feedback!</button>
                <form id="feedbackForm" action="feedback.jsp" method="post" style="display: none;">
                    <input type="text" name="f_name" placeholder="Your Name" required>
                    <input type="text" name="f_conNum" placeholder="Contact Number" required>
                    <input type="email" name="f_email" placeholder="Your Email" required>
                    <textarea name="f_feedBack" placeholder="Your feedback here..." required></textarea>
                </form>
            </div>
        </div>
    </div>
        <jsp:include page="Footer.jsp" />
    
</body>
</html>