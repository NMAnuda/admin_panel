<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <jsp:include page="Header.jsp" />
    <meta charset="UTF-8">
    <title>Vehicle Parts Catalog</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa; /* Light background like profile page */
            margin: 0;
            padding: 0;
        }
        .container {
            width: 90%;
            margin: 40px auto;
            background-color: #ffffff; /* White background for the container */
            padding: 30px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1); /* Softer shadow */
            border-radius: 10px;
        }
        h1 {
            text-align: center;
            color: #333; /* Dark text color for the title */
            font-size: 32px;
            margin-bottom: 40px;
            font-family: 'Poppins', sans-serif;
        }
        .catalog {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .item {
            width: 23%;
            background-color: #ffffff; /* White background for each item */
            color: #333; /* Dark text color */
            margin-bottom: 30px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0px 3px 8px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            padding: 20px;
            transition: transform 0.3s, box-shadow 0.3s;
            height: 400px;
        }
        .item:hover {
            transform: translateY(-5px); /* Slight hover effect */
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.15); /* Deeper shadow on hover */
        }
        .item img {
            width: 100%;
            height: 180px;
            object-fit: cover;
            border-bottom: 2px solid #eee;
        }
        .item h3 {
            font-size: 18px;
            margin: 15px 0;
            color: #333;
        }
        .item p {
            margin: 5px 0;
            color: #555; /* Slightly lighter text for descriptions */
        }
        .price {
            font-size: 20px;
            color: #28a745; /* Green color for price */
            margin-bottom: 10px;
        }
        .btn {
            padding: 10px 16px;
            background-color: #007bff; /* Blue color for buttons */
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
            transition: background-color 0.3s, transform 0.2s;
        }
        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
            transform: translateY(-2px);
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Vehicle Parts Catalog</h1>
    <div class="catalog">
        <!-- First Row -->
        <div class="item">
            <img src="images/A.jpg" alt="Engine Oil">
            <h3>Engine 123</h3>
            <p>Part No: 12883945375</p>
            <p class="price">$25.99</p>
            <a href="singalpoduct page.jsp"><button class="btn">veiw</button></a> 
            
        </div>
        <div class="item">
            <img src="images/B.jpeg" alt="Brake Pad">
            <h3>Engine 982</h3>
            <p>Part No: 12198377722</p>
            <p class="price">$45.00</p>
           <button class="btn">veiw</button>
        </div>
        <div class="item">
            <img src="images/C.jpeg" alt="Air Filter">
            <h3>Engine 654</h3>
            <p>Part No: 14158599225</p>
            <p class="price">$15.50</p>
            <button class="btn">veiw</button>
        </div>
        <div class="item">
            <img src="images/D.jpeg" alt="Spark Plug">
            <h3>Engine 234</h3>
            <p>Part No: 1141876278</p>
            <p class="price">$8.75</p>
            <button class="btn">veiw</button>
        </div>

        <!-- Second Row -->
        <div class="item">
            <img src="images/E.jpeg" alt="Fuel Pump">
            <h3>Engine 653</h3>
            <p>Part No: 10929284732</p>
            <p class="price">$120.00</p>
            <button class="btn">veiw</button>
        </div>
        <div class="item">
            <img src="images/f.jpeg" alt="Exhaust System">
            <h3>Engine 352<h3>
            <p>Part No: 15394872923</p>
            <p class="price">$250.50</p>
            <button class="btn">veiw</button>
        </div>
        <div class="item">
            <img src="images/g.jpeg" alt="Radiator">
            <h3>Engine 876</h3>
            <p>Part No: 13487429384</p>
            <p class="price">$90.99</p>
            <button class="btn">veiw</button>
        </div>
        <div class="item">
            <img src="images/h.jpeg" alt="Battery">
            <h3>Engine 324</h3>
            <p>Part No: 10429387483</p>
            <p class="price">$70.00</p>
            <button class="btn">veiw</button>
        </div>
    </div>
</div>
 <jsp:include page="Footer.jsp" />
</body>
</html>
