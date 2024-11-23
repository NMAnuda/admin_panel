<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        
  
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <form action="login_servlet" method="post">
            <div class="input-container">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Enter your username" required/>
            </div>
            <div class="input-container">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required/>
                <button type="button" class="password-toggle" onclick="togglePassword('password')">Show</button>
            </div>
            <button type="submit">Login</button>
        </form>
        <div class="signup-link">
            Don’t have an account? <a href="admin_registerartion.jsp">Sign up</a>
        </div>
    </div>

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

        .login-container {
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

        .signup-link {
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

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>

    <script>
        function togglePassword(id) {
            var input = document.getElementById(id);
            if (input.type === "password") {
                input.type = "text";
            } else {
                input.type = "password";
            }
        }
    </script>
</body>
</html>
