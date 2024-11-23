<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<jsp:include page="Header.jsp" />
<link rel="stylesheet" href="CSS/SellerDashBoard.css">
</head>
<body>

<div class="profile-container">
    <h2>User Profile</h2>

  <c:forEach var="sellerR" items="${SellReg}">  <!-- Profile Details -->
    <div class="profile-details">
        <p><strong>User ID:</strong> ${sellerR.user_id}</p>
        <p><strong>Username:</strong> ${sellerR.user_name}</p>
        <p><strong>Email:</strong> ${sellerR.user_email}</p>
        <p><strong>Contact Number:</strong> ${sellerR.user_conNum}</p>
        <p><strong>Address:</strong> ${sellerR.user_address}</p>
        <p><strong>Password:</strong> ${sellerR.user_password}</p>
    </div>

    <!-- Action Buttons -->
    <div class="profile-actions">
        <!-- Update Button -->
        <a href="UpdateSellar.jsp?user_id=${sellerR.user_id}&user_name=${sellerR.user_name}&user_email=${sellerR.user_email}&user_conNum=${sellerR.user_conNum}&user_address=${sellerR.user_address}&user_password=${sellerR.user_password}">
            <button class="update-button">Update</button>
        </a>

        <!-- Delete Button -->
        <form action="DeleteServlet" method="post" class="delete-form">
            <input type="hidden" name="user_id" value="${sellerR.user_id}" />
            <button type="submit" class="delete-button">Delete Account</button>
        </form>
    </div>
       </c:forEach>
</div>

<script src="JS/SellerDashBoard.js"></script>
<jsp:include page="Footer.jsp" />

</body>
</html>
