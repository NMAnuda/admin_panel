<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
            font-size: 2em;
        }

        /* Table Styles */
        table {
            width: 60%; /* Set width to 60% for a single product page */
            margin: 0 auto; /* Center the table */
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #003366;
            color: white;
        }

        td {
            background-color: #ffffff;
        }

        .action-column {
            text-align: center;
        }

        /* Button Styles */
        .update-button, .delete-button {
            background-color: #101434;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            font-size: 1em;
        }

        .update-button:hover, .delete-button:hover {
            background-color: #061172;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            table {
                width: 90%;
            }

            h2 {
                font-size: 1.8em;
            }

            th, td {
                padding: 8px;
            }

            .update-button, .delete-button {
                font-size: 0.9em;
                padding: 8px 10px;
            }
        }
    </style>
</head>
<body>
<jsp:include page="Header.jsp" />

    <h2>Product Details</h2>
    <table>
    <c:forEach var="carts" items="${allCart}">
        <thead>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Product ID</td>
                <td>${carts.id}</td> <!-- Assuming the single product is stored in 'product' -->
            </tr>
            <tr>
                <td>Product Name</td>
                <td>${carts.product_name}</td>
            </tr>
            <tr>
                <td>Price</td>
                <td>${carts.price}</td>
            </tr>
            <tr>
                <td>Quantity</td>
                <td>${carts.quantity}</td>
            </tr>
            <tr>
                <td>Total</td>
                <td>${carts.total}</td>
            </tr>
            <tr>
                <td class="action-column" colspan="2"> <!-- Merged into a single cell -->
                    <a href="UpdateCart.jsp?id=${carts.id}&product_name=${carts.product_name}&price=${carts.price}&quantity=${carts.quantity}&total=${carts.total}">
                        <button class="update-button">Update</button>
                    </a>
                    <form action="cartdeletservlet" method="post" style="display:inline;">
                        <input type="hidden" name="id" value="${carts.id}">
                        <button type="submit" class="delete-button">Delete</button>
                    </form>
                </td>
            </tr>
        </tbody>
          </c:forEach>
    </table>
        <br><br><br><br>
    <jsp:include page="Footer.jsp" />
</body>

</html>
