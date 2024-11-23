<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Form</title>
</head>
<body>
    <div class="feedback-container">
        <h1>Feedback Form</h1>
        <form action="FeedBackInsertServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="f_name" required>
            
            <label for="contact">Contact Number:</label>
            <input type="tel" id="contact" name="f_conNum" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="f_email" required>
            
            <label for="feedback">Feedback:</label>
            <textarea id="feedback" name="f_feedBack" required></textarea>
            
            <input type="submit" value="Submit Feedback">
        </form>
    </div>
    <script src="JS/Feedback.js"></script>

    <!-- Corrected the typo here -->
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: white;
            color: navy;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .feedback-container {
            background-color: white;
            padding: 40px;
            border-radius: 12px;
            width: 360px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            border: 1px solid #e0e0e0;
        }

        h1 {
            text-align: center;
            color: navy;
            margin-bottom: 20px;
            font-weight: 700;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            color: black;
            margin-bottom: 6px;
            font-size: 14px;
        }

        input[type="text"],
        input[type="tel"],
        input[type="email"],
        textarea {
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 8px;
            background-color: #f9f9f9;
            font-size: 14px;
            color: #333;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="tel"]:focus,
        input[type="email"]:focus,
        textarea:focus {
            border-color: navy;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 100px;
        }

        input[type="submit"] {
            background-color: navy;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #333;
        }
    </style>
</body>
</html>
