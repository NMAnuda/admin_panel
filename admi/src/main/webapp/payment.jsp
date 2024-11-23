<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Payment Gateway</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #1C1E21;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .payment-container {
      background-color: #FFFFFF;
      padding: 30px 35px; 
      border-radius: 15px;
      box-shadow: 0 8px 30px rgba(0, 0, 0, 0.15);
      width: 100%;
      max-width: 420px;
      color: #333;
    }

    h2 {
      text-align: center;
      color: #1C3B57;
      margin-bottom: 30px;
      font-size: 24px;
      font-weight: 600;
    }

    .payment-options {
      display: flex;
      justify-content: space-between;
      margin-bottom: 25px;
    }

    .payment-option {
      background-color: #F4F4F4;
      padding: 15px;
      border: 2px solid #DDDDDD;
      border-radius: 10px;
      text-align: center;
      cursor: pointer;
      transition: background-color 0.3s ease, border-color 0.3s ease;
      width: 48%;
    }

    .payment-option:hover {
      background-color: #1C3B57;
      color: white;
      border-color: #1C3B57;
    }

    .payment-option img {
      width: 35px;
      margin-bottom: 8px;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      margin-bottom: 8px;
      color: #1C1E21;
      font-weight: 500;
    }

    .form-group input {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      border: 2px solid #DDDDDD;
      border-radius: 8px;
      transition: border-color 0.3s ease;
      box-sizing: border-box; 
    }

    .form-group input:focus {
      border-color: #1C3B57;
      outline: none;
    }

    .form-row {
      display: flex;
      justify-content: space-between;
    }

    .form-row .form-group {
      width: 48%;
    }

    .btn {
      width: 100%;
      padding: 15px;
      background-color: #1C3B57;
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 18px;
      font-weight: 600;
      cursor: pointer;
      margin-top: 25px;
      transition: background-color 0.3s ease;
    }

    .btn:hover {
      background-color: #141A22;
    }
  </style>
</head>
<body>

  <div class="payment-container">
    <h2>Payment Gateway</h2>
    
    <div class="payment-options">
      <div class="payment-option">
        <img src="https://img.icons8.com/ios-filled/50/000000/google-pay.png" alt="GPay">
        <div>Google Pay</div>
      </div>
      <div class="payment-option">
        <img src="https://img.icons8.com/ios-filled/50/000000/apple-pay.png" alt="Apple Pay">
        <div>Apple Pay</div>
      </div>
    </div>
    
    <form>
      <div class="form-group">
        <label for="cardNumber">Card Number</label>
        <input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19">
      </div>

      <div class="form-row">
        <div class="form-group">
          <label for="expiryDate">Expiry Date</label>
          <input type="text" id="expiryDate" placeholder="MM/YY" maxlength="5">
        </div>

        <div class="form-group">
          <label for="cvv">CVV</label>
          <input type="text" id="cvv" placeholder="123" maxlength="3">
        </div>
      </div>

      <div class="form-group">
        <label for="cardName">Cardholder Name</label>
        <input type="text" id="cardName" placeholder="Enter Your Name">
      </div>

      <button type="button" class="btn">Pay Now</button>
    </form>
  </div>

</body>
</html>
