<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
   <jsp:include page="Header.jsp" />

    <br>
    <div class="slider">
        <div class="slides">
            <img src="images\vehicle-spare-parts-1-1.jpg" class="pictures">
            <img src="images\disc-brake-and-pads-on-a-vehicle.jpg" class="pictures">
            <img src="images\219-DGARAGE-KiaForteGTPart3-000-lead.jpg" class="pictures">
            <img src="images\Tips-to-Choose-Genuine-Spare-Parts-from-Online-or-Physical-Store.jpg" class="pictures">
        </div>
        <h1 class="text">Auto parts paradise Sri Lanka</h1>
    </div>

    <br><br>

    <div class="container">
        <!-- Engine Parts Box -->
        <div class="box">
            <div class="box-content">
                <img src="images/ve-sinh-khoang-dong-co.jpg" alt="Engine Parts">
                <div class="box-text">
                    <h2>ENGINE PARTS</h2>
                    <a href="catalogpage.jsp" class="more-details">More Details</a>
                </div>
            </div>
            <div class="details">
                <ul>
                    <li>Cylinder Block</li>
                    <li>Crankshaft</li>
                    <li>Camshaft</li>
                    <li>Pistons</li>
                    <li>Connecting Rods</li>
                    <li>Oil Pump</li>
                </ul>
            </div>
        </div>

        <!-- Service Parts Box -->
        <div class="box">
            <div class="box-content">
                <img src="images/R.jpeg" alt="Service Parts">
                <div class="box-text">
                    <h2>SERVICE PARTS</h2>
                    <a href="#" class="more-details">More Details</a>
                </div>
            </div>
            <div class="details">
                <ul>
                    <li>Air Filters</li>
                    <li>Oil Filters</li>
                    <li>Brake Pads & Rotors</li>
                    <li>Fuel Filters</li>
                    <li>Spark Plugs</li>
                    <li>Timing Belts/Chains</li>
                    <li>Batteries</li>
                    <li>Coolant</li>
                </ul>
            </div>
        </div>

        <!-- Body Parts Box -->
        <div class="box">
            <div class="box-content">
                <img src="images/feature-image-6.jpg" alt="Body Parts">
                <div class="box-text">
                    <h2>BODY PARTS</h2>
                    <a href="#" class="more-details">More Details</a>
                </div>
            </div>
            <div class="details">
                <ul>
                    <li>Bumpers</li>
                    <li>Fenders</li>
                    <li>Hoods</li>
                    <li>Mirrors</li>
                    <li>Grilles</li>
                    <li>Headlights & Taillights</li>
                    <li>Doors & Door Handles</li>
                </ul>
            </div>
        </div>

        <!-- Lubricants Box -->
        <div class="box">
            <div class="box-content">
                <img src="images/lubricants2.jpg" alt="Lubricants">
                <div class="box-text">
                    <h2>LUBRICANTS</h2>
                    <a href="#" class="more-details">More Details</a>
                </div>
            </div>
            <div class="details">
                <ul>
                    <li>Gear Oil</li>
                    <li>Coolant/Antifreeze</li>
                    <li>Grease</li>
                    <li>Power Steering Fluid</li>
                    <li>Brake Fluid</li>
                    <li>Transmission Fluid</li>
                    <li>Engine Oil</li>
                </ul>
            </div>
        </div>
    </div>

    <style>
       :root {
    --primary-color: #1c2b4b;
    --secondary-color: #ffffff;
    --accent-color: #007aff;
    --text-color: #ffffff;
    --background-color: #f0f2f5;
}

body {
    background-color: var(--background-color);
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    margin: 0;
    font-size: 16px;
    color: var(--primary-color);
}

  .slider{
   
    top:50%;
    left:50%;
    width :100%;
    height: 540px;
    

    border-radius: 10px;
    overflow: hidden;
    
    
  }
  .slides{
    transform: translate(-50%,-50%);
    width :100%;
    height: 540px;
    display: flex;
    animation: slide 30s infinite;
    
   
  }
  @keyframes slide{
    0%{
      transform: translateX(0);
    }
    12.5%{
      transform: translateX(0);
    }
    25%{
      transform: translateX(-100%);
    }
    37.5%{
      transform: translateX(-100%);
    }
    50%{
      transform: translateX(-200%);
    }
    62.5%{
      transform: translateX(-200%);
    }
    75%{
      transform: translateX(-300%);
    }
    87.5%{
      transform: translateX(-300%);
    }
   
    100%{
      transform: translateX(-400%);
    }
    
  }
  .slider::after{
    content: "";
    position: absolute;
    top:107px;
    left: 0;
    width: 100%;
    height: 540px;
    background-color: rgba(0,0,0,0.65);
   
  }
  .slides img{
    flex:1 0 100%;
    scroll-snap-align: start;
    object-fit: cover;
  }
 .text {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%); /* This will perfectly center the text */
    color: rgb(255, 255, 255);
    z-index: 999;
    font-size: 2em;
    text-align: center;
}
 .container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 40px 20px;
    max-width: 1300px;
    margin: 0 auto;
}

.box {
    background-color: var(--primary-color);
    color: var(--text-color);
    max-width: 700px;
    margin: 20px;
    padding: 20px;
    border-radius: 12px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
    transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
    display: flex;
    flex-direction: row;
    align-items: center;
    position: relative;
    overflow: hidden;
}

.box:hover {
    transform: scale(1.05);
    box-shadow: 0 12px 24px rgba(0, 0, 0, 0.25);
}

.box img {
    width: 220px;
    height: 160px;
    object-fit: cover;
    border-radius: 12px;
    margin-right: 25px;
    transition: transform 0.3s ease-in-out;
}



.box-content {
    flex: 1;
}

.box h2 {
    font-size: 24px;
    color: var(--accent-color);
    margin-bottom: 15px;
    text-transform: uppercase;
}

.box-text {
    font-size: 18px;
    margin-bottom: 10px;


}

.more-details {
    background-color: var(--accent-color);
    color: var(--secondary-color);
    padding: 12px 30px;
    border-radius: 5px;
    text-align: center;
    text-decoration: none;
    font-weight: bold;
    text-transform: uppercase;
    transition: background-color 0.3s ease, transform 0.3s ease;
    display: inline-block;
    margin-top: 10px;
}

.more-details:hover {
    background-color: #0056b3;
    transform: translateY(-3px);
}

.details {
    margin-top: 10px;
}

.details ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
    font-size: 16px;
}

.details ul li {
    padding: 8px 0;
text-align: center;
}

.details ul li:last-child {
    border-bottom: none;
}

@media (max-width: 768px) {
    .box {
        flex-direction: column;
        text-align: center;
    }

    .box img {
        margin: 0 0 20px 0;
        width: 100%;
        max-width: 400px;
    }

    .box-content {
        width: 100%;
    }
}
</style>
 <jsp:include page="Footer.jsp" />
</body>
</html>
