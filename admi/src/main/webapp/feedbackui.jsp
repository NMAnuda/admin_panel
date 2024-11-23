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
            <a href="getservlet" style="text-decoration:none;">Register users</a>
        </div>
        <div class="nav-card" id="orderCard" onclick="scrollToFeedback()"> 
            <a href="#" style="text-decoration:none;">Feedback</a>
        </div>
        <div class="nav-card">
            Total profit
        </div>
    </div>

    <h2 style="margin-top: 70px;margin-left:45%; color: rgb(0, 0, 102);"></h2>

    <h2 id="feedbackSection" style="margin-top: 10px;margin-left:47%; color: rgb(0, 0, 102);">Feedback</h2>

    <!-- Table section -->
    <div class="container">
        <table class="user-table">
            <thead>
                <tr>
                    <th>Feedback_ID</th>
                    <th>Feedback</th>
                </tr>
            </thead>
            <tbody id="orderTableBody">
                <c:if test="${not empty feedget}">
                    <c:forEach var="feedget" items="${feedget}">
                        <tr>
                            <td>${feedget.getF_ID()}</td>
                            <td>${feedget.getF_feedBack()}</td>
                        </tr>
                    </c:forEach>
                </c:if>
            </tbody>
        </table>
    </div>

    <br><br>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #e6f0ff;
        }

        .navbar {
            top: 0;
            left: 0;
            width: 100%;
            background-color: #003366;
            display: flex;
            justify-content: space-around;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1000;
        }

        .nav-card {
            background-color: #336699;
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

        .nav-card:hover {
            background-color: #4d88cc;
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
            background-color: #336699;
            color: white;
        }

        .user-table td {
            background-color: #99bbff;
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
            background-color: #004d99;
        }

        .update-btn {
            background-color: #0059b3;
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

    <jsp:include page="Footer.jsp" />
</body>
</html>
