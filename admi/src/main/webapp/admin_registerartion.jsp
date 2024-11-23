<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Registration</title>
</head>

<body>
<jsp:include page="Header.jsp" />
 <div class="header">
        <div class="dropdown">
            <div class="menu-icon" onclick="toggleMenu()">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="dropdown-content" id="roleDropdown">
                <a href="usersignup.jsp">User</a>
                <a href="#">Admin</a>
                <a href="SellerRegistration.jsp">Seller</a>
            </div>
        </div>
    </div>

    <div class="registration-container">
        <h2>Admin Registration</h2>
        <form id="registrationForm" action="insert_admin_servlet" method="post" onsubmit="return validateForm()">
            <div class="input-container">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="email">Email</label>
                <input type="email" id="email" name="admin_email" required>
                <span id="emailError" style="color: red;"></span>
            </div>
            <div class="input-container">
                <label for="contactNumber">Contact Number</label>
                <input type="text" id="contactNumber" name="admin_conNum" required>
            </div>
            <div class="input-container">
                <label for="address">Address</label>
                <input type="text" id="address" name="admin_address" required>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                <button type="button" class="password-toggle" onclick="togglePassword('password')">Show</button>
                <span id="passwordError" style="color: red;"></span>
            </div>
            <div class="input-container">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="confirmPassword" required>
                <button type="button" class="password-toggle" onclick="togglePassword('confirmPassword')">Show</button>
                <span id="confirmPasswordError" style="color: red;"></span>
            </div>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="login.jsp">Log in</a>
        </div>
    </div>

    <script>
        function togglePassword(fieldId) {
            var field = document.getElementById(fieldId);
            if (field.type === "password") {
                field.type = "text";
            } else {
                field.type = "password";
            }
        }

        function validateEmail(email) {
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            return emailPattern.test(email);
        }

        function validatePassword(password) {
            const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$/;
            return passwordPattern.test(password);
        }

        function validateForm() {
           
            document.getElementById('emailError').textContent = '';
            document.getElementById('passwordError').textContent = '';
            document.getElementById('confirmPasswordError').textContent = '';

          
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            let isValid = true;

           
            if (!validateEmail(email)) {
                document.getElementById('emailError').textContent = 'Invalid email format.';
                isValid = false;
            }

          
            if (!validatePassword(password)) {
                document.getElementById('passwordError').textContent = 'Password must be at least 8 characters, include an uppercase letter, a lowercase letter, a number, and a special character.';
                isValid = false;
            }

            
            if (password !== confirmPassword) {
                document.getElementById('confirmPasswordError').textContent = 'Passwords do not match.';
                isValid = false;
            }

            return isValid;
        }

        function toggleMenu() {
            var dropdown = document.getElementById("roleDropdown");
            if (dropdown.style.display === "block") {
                dropdown.style.display = "none";
            } else {
                dropdown.style.display = "block";
            }
        }
    </script>

   <style>
     .header {
            display: flex;
            justify-content: flex-end;
            padding: 10px;

            color: var(--secondary-color);
        }

        /* Hamburger Menu Styling */
        .menu-icon {
            display: inline-block;
            cursor: pointer;
            width: 35px;
            height: 30px;
        }

        .menu-icon div {
            width: 100%;
            height: 4px;
            background-color: #333;
            margin: 5px 0;
        }
    
    .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            right: 10px; /* Align dropdown to the right */
            top: 50px;
        }

        /* Dropdown item styling */
        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-weight: 500;
        }

        .dropdown-content a:hover {
            background-color: var(--accent-color);
            color: white;
        }

        /* Show dropdown when clicked */
        .dropdown:hover .dropdown-content {
            display: block;
        }
    :root {
            --primary-color: #1c2b4b;
            --secondary-color: #ffffff;
            --accent-color: #007aff;
            --text-color: #333333;
            --background-color: #f0f2f5;
        }

    
  body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            margin: 0;
           
            line-height: 1.6;
        }

      .registration-container {
    max-width: 500px; /* or your desired width */
    margin: 0 auto;
    background-color: var(--secondary-color);
    padding: 40px; 
    border-radius: 20px; /* Increased border-radius for rounder corners */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

        h2 {
            color: var(--primary-color);
            font-size: 28px;
            margin-bottom: 30px; /* Increased margin for better spacing */
            text-align: center;
        }

        .input-container {
            margin-bottom: 20px; /* Increased margin for better spacing */
        }

        label {
            display: block;
            margin-bottom: 8px; /* Increased margin for better spacing */
            font-weight: 500;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px; /* Increased padding for input fields */
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px; /* Increased font size for better readability */
        }

        button {
            background-color: var(--accent-color);
            color: var(--secondary-color);
            border: none;
            padding: 12px 15px; /* Increased padding for button */
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            font-weight: 500;
            width: 100%;
            margin-top: 15px; /* Increased margin for better spacing */
        }

        button:hover {
            background-color: #0056b3;
        }

        .password-toggle {
            background-color: #6c757d;
            padding: 6px 12px; /* Increased padding for toggle button */
            font-size: 14px; /* Increased font size for better readability */
            margin-top: 8px;
            width: auto;
        }

        .login-link {
            text-align: center;
            margin-top: 25px; /* Increased margin for better spacing */
        }

        a {
            color: var(--accent-color);
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
</style>

    <br/>
    <jsp:include page="Footer.jsp" />
</body>
</html>
