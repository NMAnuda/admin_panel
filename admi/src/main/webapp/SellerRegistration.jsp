<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Registration</title>
        <link rel="stylesheet" href="CSS/SellerRegistration.css">
       
            <jsp:include page="Header.jsp" />
         <br>
    
    
</head>
<body>
    <div class="registration-container">
        <h2>Seller Registration</h2>
        <form id="registrationForm" action="SellerRegServlet" method="post">
            <div class="input-container">
                <label for="username">Username</label>
                <input type="text" id="username" name="user_name" required>
            </div>
            <div class="input-container">
                <label for="email">Email</label>
                <input type="email" id="email" name="user_email" required>
            </div>
            <div class="input-container">
                <label for="contactNumber">Contact Number</label>
                <input type="text" id="contactNumber" name="user_conNum" required>
            </div>
            <div class="input-container">
                <label for="address">Address</label>
                <input type="text" id="address" name="user_address" required>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input type="password" id="password" name="user_password" required>
                <button type="button" class="password-toggle" onclick="togglePassword('password')">Show</button>
            </div>
            <div class="input-container">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                <button type="button" class="password-toggle" onclick="togglePassword('confirmPassword')">Show</button>
            </div>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="sellarlogin.jsp">Log in</a>
        </div>
    </div>
    <br/>
    <script>function togglePassword(id) {
        const passwordInput = document.getElementById(id);
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);
    }

    function validatePasswords() {
        const password = document.getElementById('password').value;
        const confirmPassword = document.getElementById('confirmPassword').value;
        if (password !== confirmPassword) {
            alert('Passwords do not match');
            return false;
        }
        return true;
    }

    document.getElementById('registrationForm').addEventListener('submit', function(event) {
        if (!validatePasswords()) {
            event.preventDefault();
        }
        function validatePasswords() {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (password.length < 10) {
                alert('Password must be at least 10 characters long');
                return false;
            }

            //Check pw
            if (password !== confirmPassword) {
                alert('Passwords do not match');
                return false;
            }

            return true;
        }

        document.getElementById('registrationForm').addEventListener('submit', function(event) {
            if (!validatePasswords()) {
                event.preventDefault();  // Prevent form submission if validation fails
            }
        });

    });</script>
        <script src="JS/SellerRegistration.js"></script>   
            
                <jsp:include page="Footer.jsp" />
    
</body>
</html>