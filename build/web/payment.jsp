<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Payment</title>
    <style>
        /* General Page Styling */
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 20px; /* Add some padding */
            color: #fff; /* Default text color */
            text-align: center;
            position: relative;
            overflow-x: hidden; /* Disable horizontal scrolling */
        }

        /* Background Image */
        .background {
            background-image: url('https://images.unsplash.com/photo-1468824357306-a439d58ccb1c?q=80&w=1959&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
        }

        /* Content Box Styling */
        .container {
            background-color: rgba(210, 180, 140, 0.15); /* Brown color with 15% opacity */
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            margin: 20px auto; /* Add margin for spacing */
        }

        h2 {
            color: #000; /* Black color for headings */
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Black color for payment info */
        .payment-info {
            color: #000; /* Black color for payment details text */
            font-size: 18px; /* Adjust font size as needed */
            margin-bottom: 10px; /* Add some margin for spacing */
        }

        label {
            color: #000; /* Black color for side headings */
            font-weight: bold;
        }

        /* Button Styling */
        .btn {
            background-color: #8B4513; /* Brown color for Pay Now button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn:hover {
            background-color: #A0522D; /* Lighter brown on hover */
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <!-- Background Image -->
    <div class="background"></div>

    <div class="container">
        <h2>Payment Details</h2>
        <p class="payment-info">You have selected: <%= request.getParameter("hotel") %></p>
        <p class="payment-info">Amount to be paid: <%= request.getParameter("amount") %></p>

        <form action="processPayment.jsp" method="post">
            <!-- Add any payment form fields here -->
            <label for="cardNumber">Card Number:</label>
            <input type="text" id="cardNumber" name="cardNumber" required /><br /><br />

            <label for="expiryDate">Expiry Date:</label>
            <input type="text" id="expiryDate" name="expiryDate" required placeholder="MM/YY" /><br /><br />

            <label for="cvv">CVV:</label>
            <input type="text" id="cvv" name="cvv" required /><br /><br />

            <input type="hidden" name="hotel" value="<%= request.getParameter("hotel") %>" />
            <input type="hidden" name="amount" value="<%= request.getParameter("amount") %>" />

            <input type="submit" class="btn" value="Pay Now" />
        </form>
    </div>

</body>
</html>
