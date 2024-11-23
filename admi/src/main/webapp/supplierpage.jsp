<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Supplier Dashboard</title>
    <jsp:include page="Header.jsp" />
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        /* Main Content */
        .container {
            display: flex;
            flex-direction: column;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Supplier Info Card */
        .supplier-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            padding: 20px;
            background-color: #eef;
            border-radius: 8px;
        }

        /* Product Form */
        .add-product-form {
            margin-bottom: 30px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .add-product-form h3 {
            margin-bottom: 10px;
        }
        .add-product-form form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        .add-product-form input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .add-product-form button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .add-product-form button:hover {
            background-color: #45a049;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background-color: #333;
            color: #fff;
            margin-top: 20px;
        }
		        /* Product List */
		.product-list table {
		    width: 100%;
		    border-collapse: collapse;
		    margin-bottom: 20px;
		}
		
		.product-list table th, 
		.product-list table td {
		    padding: 12px;
		    text-align: left;
		    border-bottom: 1px solid #ddd;
		}
		
		.product-list table th {
		    background-color: #333;
		    color: #fff;
		    font-weight: bold;
		    font-size: 16px;
		}
		
		.product-list table td {
		    font-size: 14px;
		}
		
		.product-list .actions {
		    display: flex;
		    gap: 10px;
		}
		
		.product-list .actions button {
		    padding: 6px 12px;
		    cursor: pointer;
		    border: 1px solid #ccc;
		    border-radius: 4px;
		    color: #333;
		    font-size: 14px;
		}
		
		.product-list .edit {
		    background-color: #4CAF50;
		    color: #fff;
		}
		
		.product-list .remove {
		    background-color: #f44336;
		    color: #fff;
		}
		
		.product-list .edit:hover,
		.product-list .remove:hover {
		    opacity: 0.8;
		}
    </style>
</head>
<body>
    <div class="container">
        <!-- Supplier Information -->
        <div class="supplier-info">
            <div>
                <h2>Supplier Name</h2>
                <p>Address: 1234 Supplier St, City, Country</p>
                <p>Contact: supplier@example.com | +123-456-7890</p>
            </div>
            <div>
                <p>Status: <strong>Active</strong></p>
            </div>
        </div>

        <!-- Add Product Form -->
        <div class="add-product-form">
            <h3>Add New Product</h3>
            <form action="AddProductServlet" method="POST">
                <input type="text" name="productName" placeholder="Product Name" required>
                <input type="text" name="sku" placeholder="SKU (Product ID)" required>
                <input type="number" name="price" placeholder="Price" step="0.01" required>
                <input type="number" name="stock" placeholder="Stock Quantity" required>
                <button type="submit">Add Product</button>
            </form>
        </div>

        <!-- Product List -->
        <div class="product-list">
            <h3>Product List</h3>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>SKU</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Product 1</td>
                        <td>SKU12345</td>
                        <td>$100</td>
                        <td>50</td>
                        <td class="actions">
                            <button class="edit">Edit</button>
                            <button class="remove">Remove</button>
                        </td>
                    </tr>
                    <!-- Additional products can be dynamically added -->
                </tbody>
            </table>
        </div>
    </div>

    <jsp:include page="Footer.jsp" />
</body>
</html>
