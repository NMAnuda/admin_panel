<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="Header.jsp" />
    <meta charset="UTF-8">
    <title>Vehicle Part Details</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa; /* Light background */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 70%;
            margin: 40px auto;
            background-color: #ffffff; /* White background for the container */
            padding: 30px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1); /* Softer shadow */
            border-radius: 15px; /* Rounded corners */
            text-align: center;
        }
        h1 {
            color: #333; /* Dark text color for the title */
            font-size: 32px; /* Increased font size for emphasis */
            margin-bottom: 20px;
            font-family: 'Poppins', sans-serif;
        }
        .product-image img {
            width: 60%; /* Reduced width for image */
            height: auto;
            max-height: 250px; /* Reduced max height */
            object-fit: cover;
            border-radius: 10px; /* Rounded corners for image */
            transition: transform 0.3s; /* Smooth hover effect */
        }
        .product-image img:hover {
            transform: scale(1.05); /* Scale image on hover */
        }
        .description {
            margin: 20px 0;
            color: #555; /* Slightly lighter text for descriptions */
            font-size: 18px; /* Increased font size */
        }
        .price {
            font-size: 28px; /* Increased price font size */
            color: #28a745; /* Green color for price */
            margin: 15px 0;
            font-weight: bold;
        }
        .quantity {
            margin: 20px 0;
            font-size: 16px; /* Font size for quantity */
            color: #333; /* Dark color for quantity label */
        }
        .quantity input {
            width: 60px; /* Width of the input field */
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            text-align: center; /* Center the input text */
            font-size: 16px; /* Font size for input */
        }
        .btn {
            padding: 12px 20px;
            background-color: #007bff; /* Blue color for buttons */
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 18px; /* Increased button font size */
            transition: background-color 0.3s, transform 0.2s;
            text-decoration: none; /* No underline for links */
            margin-top: 20px; /* Space above button */
        }
        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: translateY(-2px);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Engine 123</h1>
    <div class="product-image">
        <img src="images/A.jpg" alt="Engine 123">
    </div>
    <p class="description">Part No: 12883945375</p>
    <p class="price">$25.99</p>

    <!-- Form to submit product details to the servlet -->
    <form action="insert.jsp" method="post">
        <input type="hidden" name="product_name" value="Engine 123">
        <input type="hidden" name="price" value="25.99">
        
        <!-- Quantity Input Field -->
        <div class="quantity">
            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" value="1" min="1" required>
        </div>

        <button type="submit" class="btn">Add to Cart</button>
    </form>
</div>

<jsp:include page="Footer.jsp" />
</body>
</html>
