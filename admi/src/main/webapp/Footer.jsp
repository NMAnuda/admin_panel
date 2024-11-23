<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="footer">
    <style>
        .footer {
            background-color: #001f3f; /* Dark background */
            color: #ffffff; /* White text */
            padding: 20px 0; /* Padding for top and bottom */
        }

        .footer-container {
            display: flex;
            justify-content: space-around; /* Space between sections */
            max-width: 1200px; /* Maximum width for the footer */
            margin: 0 auto; /* Center footer */
        }

        .footer-section {
            flex: 1; /* Make each section equal width */
            margin: 0 15px; /* Margin between sections */
        }

        .footer-section h3 {
            margin-bottom: 10px; /* Spacing below the heading */
        }

        .footer-section ul {
            list-style-type: none; /* No bullet points */
            padding: 0; /* No padding */
        }
        
        .footer-section ul li::before {
            content: none; /* This will ensure no unwanted markers or symbols appear */
        }
        
        .footer-section ul li {
            margin: 5px 0; /* Space between list items */
        }

        .footer-section a {
            color: #ffffff; /* White links */
            text-decoration: none; /* No underline */
            transition: color 0.3s; /* Smooth transition */
        }

        .footer-section a:hover {
            color: #00ccff; /* Light blue on hover */
        }

        .footer-bottom {
            text-align: center; /* Center text */
            padding-top: 20px; /* Padding above the bottom section */
            border-top: 1px solid rgba(255, 255, 255, 0.2); /* Light top border */
        }

        .footer-logo {
            display: flex;
            justify-content: center; /* Center logo */
        }

        .footer-logo img {
            width: 100px; /* Set logo width */
        }

        .footer-social {
            display: flex;
            justify-content: center; /* Center social icons */
            margin: 10px 0; /* Margin above and below */
        }

        .footer-social a {
            margin: 0 10px; /* Spacing between icons */
        }

        .footer-social a img {
            width: 30px; /* Set a fixed width for social icons */
            height: 30px; /* Set a fixed height for social icons */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .footer-container {
                flex-direction: column; /* Stack sections on small screens */
                align-items: center; /* Center items */
            }

            .footer-bottom {
                flex-direction: column; /* Stack elements in bottom section */
            }

            .footer-logo {
                margin: 10px 0; /* Margin above and below */
            }
        }
    </style>

    <div class="footer-container">
        <div class="footer-section">
            <h3>Our Company</h3>
            <ul>
                <li><a href="AboutUs.jsp">About Us</a></li>
                <li><a href="FAQ.jsp">FAQ</a></li>
            </ul>
        </div>
        <div class="footer-section">
            <h3>Help and Support</h3>
            <ul>
                <li><a href="ContactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
        <div class="footer-logo">
            <img src="images/Logo.png" alt="homepage.jsp"> <!-- Replace with the actual path to your logo -->
        </div>
    </div>
    <div class="footer-bottom">
        <p>Copyright 2022 © SpareMarts.com All Rights Reserved.</p>
        <div class="footer-social">
            <a href="#"><img src="images/FB.png" alt="Facebook"></a> <!-- Replace with actual social media icons -->
            <a href="#"><img src="images/INSTA.png" alt="Instagram"></a>
            <a href="#"><img src="images/X.png" alt="Twitter"></a>
        </div>
    </div>
</footer>
