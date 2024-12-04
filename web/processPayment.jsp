<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Payment Confirmation</title>
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
            background-image: url('https://images.unsplash.com/photo-1602002418679-43121356bf41?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1;
        }

        /* Main Container */
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

        .success {
            color: green;
            font-size: 20px; /* Increased font size for payment confirmation */
        }

        .error {
            color: red;
        }

        .btn {
            background-color: #00CED1; /* Aqua green color for buttons */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            text-decoration: none; /* Ensure the button appears without underline */
            display: inline-block; /* Ensures the link behaves like a button */
            transition: background-color 0.3s, transform 0.2s;
        }

        .btn:hover {
            background-color: #20B2AA; /* Darker aqua green on hover */
            transform: scale(1.05);
        }
    </style>
</head>
<body class="background">

<%
    String hotel = request.getParameter("hotel");
    String amount = request.getParameter("amount");
    String cardNumber = request.getParameter("cardNumber");
    String expiryDate = request.getParameter("expiryDate");
    String cvv = request.getParameter("cvv");

    // Here you can add logic to process the payment using the details
    // For demonstration purposes, we'll assume the payment is always successful

    boolean paymentSuccessful = true; // Replace this with actual payment logic

    if (paymentSuccessful) {
%>
        <div class="container">
            <h2>Payment Confirmation</h2>
            <p class="success">Your payment of <strong>₹<%= amount %></strong> for <strong><%= hotel %></strong> has been successfully processed.</p>
            <a href="index.jsp" class="btn">Return to Home</a>
            <a href="viewReservations.jsp" class="btn">View Reservations</a> <!-- New button added here -->
        </div>
<%
    } else {
%>
        <div class="container">
            <h2>Payment Failed</h2>
            <p class="error">There was an issue processing your payment. Please try again.</p>
            <a href="payment.jsp" class="btn">Retry Payment</a>
        </div>
<%
    }
%>

</body>
</html>
