<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Management</title> 
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <jsp:include page="Header.jsp" />
    <br><br>

    <div class="navbar">
        <div class="nav-card" id="userCard" onclick="scrollToTop()"> 
            Register users
            <p id="userCount">${fn:length(allAdmin)}</p>
        </div>
        <div class="nav-card" id="orderCard" onclick="scrollToFeedback()"> 
            <a href="feedbackGetServlet" style="text-decoration:none;">Feedback</a>
        </div>
        <div class="nav-card">
            Total profit
        </div>
    </div>

    <h2 style="margin-top: 70px;margin-left:45%; color: rgb(0, 0, 102);">Register users</h2>

    <div class="container">
        <table class="user-table">
            <thead>
                <tr>
                    <th>USER ID</th>
                    <th>USER NAME</th>
                    <th>Email</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody id="userTableBody">
                <c:if test="${not empty allAdmin}">
                    <c:forEach var="admin" items="${allAdmin}">
                        <tr>
                            <td>${admin.userID}</td>
                            <td>${admin.username}</td>
                            <td>${admin.email}</td>
                            <td>
                                <form action="delete_servlet" method="post" style="display: inline;">
                                    <input type="hidden" name="userID" value="${admin.userID}">
                                    <button class='action-btn delete-btn' onclick="return confirmDelete()">Delete</button>
                                </form>
                                <a href="reguser_signup.jsp?userID=${admin.userID}&email=${admin.email}&username=${admin.username}">
                                    <button class='action-btn update-btn'>Update</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </c:if>
            </tbody>
        </table>
    </div>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #e6f0ff; /* Very light blue */
        }

        .navbar {
            top: 0;
            left: 0;
            width: 100%;
            background-color: #003366; /* Dark blue */
            display: flex;
            justify-content: space-around;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .nav-card {
            background-color: #336699; /* Medium blue */
            color: white;
            width: 300px;
            height: 200px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
            font-size: 18px;
            cursor: pointer;
            text-align: center;
        }

        .nav-card p {
            font-size: 20px;
            margin-top: 10px;
        }

        .nav-card:hover {
            background-color: #4d88cc; /* Lighter blue */
        }

        .container {
            margin-top: 10px;
            width: 80%;
            max-width: 1200px;
            margin-left: auto;
            margin-right: auto;
        }

        .user-table {
            width: 100%;
            border-collapse: collapse;
        }

        .user-table th, .user-table td {
            border: 1px solid white;
            padding: 10px;
            text-align: center;
        }

        .user-table th {
            background-color: #336699; /* Medium blue */
            color: white;
        }

        .user-table td {
            background-color: #99bbff; /* Light blue */
        }

        .action-btn {
            padding: 8px 12px;
            border: none;
            color: white;
            border-radius: 5px;
            margin: 0 5px;
            cursor: pointer;
        }

        .delete-btn {
            background-color: #cc0000; /* Red for delete */
        }

        .update-btn {
            background-color: #339966; /* Green for update */
        }

        .action-btn:hover {
            opacity: 0.8;
        }
    </style>

    <script>
        function scrollToFeedback() {
            document.getElementById('feedbackSection').scrollIntoView({
                behavior: 'smooth'
            });
        }

        function scrollToTop() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        }

        function confirmDelete() {
            return confirm("Are you sure you want to delete this user?");
        }
    </script>
    
    <br><br>
    <jsp:include page="Footer.jsp" />
</body>
</html>
