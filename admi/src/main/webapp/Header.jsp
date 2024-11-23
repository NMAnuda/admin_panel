<header class="site-header">
  <nav>
    <ul>
      <li><a href="homepage.jsp">Home</a></li>
      <li><a href="AboutUs.jsp">About Us</a></li>
      <li><a href="feedback.jsp">Feedback</a></li>
      <li><a href="ContactUs.jsp">Contact Us</a></li>
           <a href="usersignup.jsp"><img src="images/instagram-people-profile-sets-user-blue-dotted-line-line-icon-free-vector-removebg-preview.png" style="width: 50px;height: 50px;float: right; padding: 2px;"></a>

    </ul>
  </nav>
</header>

<style>



@charset "UTF-8";

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0;
}

header.site-header {
    background-color: #003366; /* Darker Navy Blue */
    padding: 20px 0; /* Increased padding for a more spacious look */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
nav ul {
    list-style-type: none;
    padding: 0;
    display: flex;
    justify-content: space-between; 
    align-items: center;
    width: 100%; /* Full width */
    max-width: 1200px;
    margin: 0 auto;
}

nav ul li {
    display: inline;
    margin: 0; /* Remove any margin that might cause spacing issues */
}

nav ul li::before {
    content: none; /* This will ensure no unwanted markers or symbols appear */
}
nav ul li a {
    color: white;
    background-color: #004080; /* Dark Navy Blue */
    text-decoration: none;
    padding: 10px 20px; /* Reduced padding */
    font-weight: bold;
    font-size: 16px; /* Smaller font size */
    display: block;
    border-radius: 20px; /* Slightly reduced border radius */
    transition: background-color 0.3s ease, transform 0.3s ease;
}

nav ul li a:hover {
    background-color: #0059b3; /* Lighter Navy Blue on hover */
    transform: scale(1.05);
}

.seller-btn {
    background-color: #000; /* Black button */
    color: white;
    padding: 10px 25px; /* Smaller padding */
    font-size: 16px; /* Slightly smaller font size */
    font-weight: bold;
    border-radius: 8px; /* Reduced border radius */
    border: 2px solid white; 
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.seller-btn:hover {
    background-color: #333; /* Darker black on hover */
    transform: scale(1.05);
}

@media (max-width: 768px) {
    nav ul {
        flex-direction: column;
        align-items: center;
    }

    nav ul li {
        margin: 5px 0; /* Space between items in the column layout */
    }

    nav ul li a {
        padding: 8px;
        width: 100%;
        text-align: center;
    }

    .seller-btn {
        width: 100%; 
        text-align: center;
        margin-top: 10px;
    }
}
</style>