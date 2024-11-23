<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Seller Information</title>
        <link rel="stylesheet" href="CSS/UpdateSeller.css">
            <jsp:include page="Header.jsp" />
        

</head>
<body>
<%
    // Fetch parameters from the request
	int user_id = Integer.parseInt(request.getParameter("user_id"));
	String user_name = request.getParameter("user_name"); 
	String user_email = request.getParameter("user_email"); 
	int user_conNum = Integer.parseInt(request.getParameter("user_conNum")); 
	String user_address = request.getParameter("user_address"); 
	String user_password = request.getParameter("user_password"); 
%>
<div class="registration-container">
    <h2>Seller Registration Update</h2>
    <form id="registrationForm" action="UpdateServlet" method="post">
        <div class="input-container">
            <label for="userid">UserID</label>
            <input type="text" id="userid" name="user_id" value="<%= user_id %>" readonly>
        </div>
        <div class="input-container">
            <label for="username">Username</label>
            <input type="text" id="username" name="user_name" value="<%= user_name %>" required>
        </div>
        <div class="input-container">
            <label for="email">Email</label>
            <input type="email" id="email" name="user_email" value="<%= user_email %>" required>
        </div>
        <div class="input-container">
            <label for="contactNumber">Contact Number</label>
            <input type="text" id="contactNumber" name="user_conNum" value="<%= user_conNum %>" required>
        </div>
        <div class="input-container">
            <label for="address">Address</label>
            <input type="text" id="address" name="user_address" value="<%= user_address %>" required>
        </div>
        <div class="input-container">
            <label for="password">Password</label>
            <input type="password" id="password" name="user_password" value="<%= user_password %>" required>
        </div>
        
        <button type="submit">Submit</button>
    </form>
    <script src="JS/UpdateSeller.js"></script>       

</div>
</body>
</html>