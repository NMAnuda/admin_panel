<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <style>
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
            padding: 20px;
            line-height: 1.6;
        }

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

        /* Dropdown list hidden by default */
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

        /* Registration form styling */
        .registration-container {
            max-width: 500px;
            margin: 0 auto;
            background-color: var(--secondary-color);
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: var(--primary-color);
            font-size: 28px;
            margin-bottom: 30px;
            text-align: center;
        }

        .input-container {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        button {
            background-color: var(--accent-color);
            color: var(--secondary-color);
            border: none;
            padding: 12px 15px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            font-size: 16px;
            font-weight: 500;
            width: 100%;
            margin-top: 15px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .password-toggle {
            background-color: #6c757d;
            padding: 6px 12px;
            font-size: 14px;
            margin-top: 8px;
            width: auto;
            cursor: pointer;
        }

        .login-link {
            text-align: center;
            margin-top: 25px;
        }

        a {
            color: var(--accent-color);
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<jsp:include page="Header.jsp" />
    <!-- Header with hamburger menu for role navigation -->
    <div class="header">
        <div class="dropdown">
            <div class="menu-icon" onclick="toggleMenu()">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <div class="dropdown-content" id="roleDropdown">
                <a href="#">User</a>
                <a href="admin_registerartion.jsp">Admin</a>
                <a href="SellerRegistration">Seller</a>
            </div>
        </div>
    </div>

    <div class="registration-container">
        <h2>User Registration</h2>
        <form id="registrationForm" action="insertservlet" method="post">
            <div class="input-container">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="input-container">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
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
                <input type="password" id="password" name="password" required>
                <button type="button" class="password-toggle" onclick="togglePassword('password', this)">Show</button>
            </div>
            <div class="input-container">
                <label for="confirmPassword">Confirm Password</label>
                <input type="password" id="confirmPassword" name="password" required>
                <button type="button" class="password-toggle" onclick="togglePassword('confirmPassword', this)">Show</button>
            </div>
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="">Log in</a>
        </div>
    </div>

    <script>
        function togglePassword(fieldId, toggleButton) {
            var field = document.getElementById(fieldId);
            if (field.type === "password") {
                field.type = "text";
                toggleButton.innerHTML = "Hide";
            } else {
                field.type = "password";
                toggleButton.innerHTML = "Show";
            }
        }

        // Function to toggle the hamburger dropdown
        function toggleMenu() {
            var dropdown = document.getElementById("roleDropdown");
            if (dropdown.style.display === "block") {
                dropdown.style.display = "none";
            } else {
                dropdown.style.display = "block";
            }
        }
    </script>
    <br/>
    <jsp:include page="Footer.jsp" />
</body>
</html>
