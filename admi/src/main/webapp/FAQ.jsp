<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="Header.jsp" />
<br>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Spare Parts - FAQ</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
        }

        .container {
            width: 80%;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #003366;
            margin-bottom: 20px;
        }

        .faq-section {
            margin-bottom: 40px;
        }

        .faq-section h2 {
            color: #003366;
            margin-bottom: 10px;
        }

        .faq-section p {
            margin-bottom: 20px;
        }

        /* Styles for the question form */
        .ask-question-form {
            background-color: #f7f7f7;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }

        .ask-question-form label {
            font-weight: bold;
            margin-bottom: 10px;
            display: block;
        }

        .ask-question-form textarea {
            width: 100%;
            height: 150px;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .ask-question-form input[type="submit"] {
            background-color: #003366;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 1.1em;
        }

        .ask-question-form input[type="submit"]:hover {
            background-color: #061172;
        }

        /* Styles for the FAQ table */
        .faq-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 40px;
        }

        .faq-table th, .faq-table td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .faq-table th {
            background-color: #f0f0f0;
            color: #003366;
        }

        .faq-table td button {
            background-color: #ff4500;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        .faq-table td button:hover {
            background-color: #cc0000;
        }

        .update-button {
            background-color: #007bff;
        }

        .update-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Vehicle Spare Parts - Frequently Asked Questions</h1>

        <!-- FAQ Section -->
        <div class="faq-section">
            <h2>1. What spare parts do you offer?</h2>
            <p>We offer a wide range of spare parts for cars, trucks, and motorcycles. Our inventory includes engine components, brake parts, filters, belts, and much more.</p>
        </div>

        <div class="faq-section">
            <h2>2. How can I find the correct part for my vehicle?</h2>
            <p>You can use our vehicle compatibility tool by entering the make, model, and year of your vehicle. If you're not sure, you can contact our support team for assistance.</p>
        </div>

        <div class="faq-section">
            <h2>3. Do you provide warranty for the spare parts?</h2>
            <p>Yes, all of our spare parts come with a manufacturer's warranty, ranging from 6 months to 2 years depending on the part.</p>
        </div>

        <div class="faq-section">
            <h2>4. How long does delivery take?</h2>
            <p>Delivery times depend on your location and the availability of the parts. Generally, orders are delivered within 3 to 7 business days.</p>
        </div>

        <div class="faq-section">
            <h2>5. Can I return a part if it doesn’t fit my vehicle?</h2>
            <p>Yes, we offer a 30-day return policy for unused parts that do not fit your vehicle. Please check our return policy for more details.</p>
        </div>

        <!-- Ask a Question Form -->
        <div class="ask-question-form">
            <h2>Ask a Question</h2>
            <form action="FAQServlet" method="post">
                <label for="question">Your Question:</label>
                <textarea id="question" name="faq_content" placeholder="Type your question here..." required minlength="10"></textarea>
                <input type="submit" value="Submit Question">
            </form>
        </div>
    </div>

</body>
<jsp:include page="Footer.jsp" />
</html>
