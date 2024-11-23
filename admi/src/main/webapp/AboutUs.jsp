
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <link rel="stylesheet" href="CSS/AboutUs.css"> <!-- Link to your CSS file -->
</head>
<body>
<jsp:include page="Header.jsp" />

    <div class="container">
        <header>
            <h1>About Us</h1>
            <p class="subtitle">We are dedicated to providing high-quality products and exceptional service to our customers.</p>
        </header>
        <section class="about-box">
            <div class="about-content">
                <h2>Our Mission</h2>
                <p>At QuickGear, our mission is to ensure that every customer finds the perfect spare parts for their needs, backed by our commitment to quality and service.</p>

                <h2>Our Vision</h2>
                <p>We strive to be the leading provider of spare parts in the industry, ensuring that every customer leaves satisfied.</p>

                <h2>Our Values</h2>
                <ul>
                    <li>Quality</li>
                    <li>Integrity</li>
                    <li>Customer Satisfaction</li>
                    <li>Innovation</li>
                </ul>
            </div>
        </section>
    </div>
    <jsp:include page="Footer.jsp" />
</body>
</html>
