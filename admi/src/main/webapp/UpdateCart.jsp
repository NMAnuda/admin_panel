<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Cart Item</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .update-container {
            width: 90%;
            max-width: 600px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }

        .input-container {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            font-size: 1em;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        input[type="number"]:focus {
            border-color: #00509E;
            outline: none;
        }

        button {
            background-color: #101434;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1em;
            width: 100%;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #061172;
        }
    </style>
</head>
<body>

<%
    // Fetch parameters from the request
    int id = Integer.parseInt(request.getParameter("id"));
    String product_name = request.getParameter("product_name"); 
    String price = request.getParameter("price"); 
    String quantity = request.getParameter("quantity"); 
    String total = request.getParameter("total"); 
%>

<div class="update-container">
    <h2>Update Cart Item</h2>
    <form id="updateForm" action="cartupdateservlet" method="post">
        <div class="input-container">
            <label for="id">ID</label>
            <input type="text" id="id" name="id" value="<%= id %>" readonly>
        </div>

        <div class="input-container">
            <label for="product_name">Product Name</label>
            <input type="text" id="product_name" name="product_name" value="<%= product_name %>" required readonly>
        </div>

        <div class="input-container">
            <label for="price">Price</label>
            <input type="text" id="price" name="price" value="<%= price %>" required readonly>
        </div>

        <div class="input-container">
            <label for="quantity">Quantity</label>
            <input type="number" id="quantity" name="quantity" value="<%= quantity %>" required min="1">
        </div>

        <script>
            document.getElementById('quantity').addEventListener('input', function () {
                if (this.value === '0' || this.value < 1) {
                    this.setCustomValidity('Quantity must be greater than 0');
                } else {
                    this.setCustomValidity('');
                }
            });
        </script>

        <div class="input-container">
            <label for="total">Total</label>
            <input type="text" id="total" name="total" value="<%= total %>" required readonly>
        </div>
        
        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
