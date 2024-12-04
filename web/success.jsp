<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reservation Successful</title>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet"> <!-- Google Font -->
    <style>
        /* General Page Styling */
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            color: #fff; /* White text color for general text */
            text-align: center; /* Center text */
            position: relative; /* For positioning */
            overflow: hidden; /* Prevent overflow */
        }

        /* Background Image */
        .background {
            background-image: url('https://images.unsplash.com/photo-1532121032426-855c544b816f?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            position: absolute; /* Position the background image */
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: -1; /* Behind the content */
        }

        /* Updated Content Box Styling */
        .container {
            background-color: rgba(0, 255, 255, 0.15); /* Lighter aqua color with more transparency */
            padding: 30px;
            border-radius: 15px; /* Rounded corners */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2); /* Slight shadow */
            width: 350px;
            position: relative;
            z-index: 1; /* On top of the background */
        }

        h2 {
            color: #004d40; /* Dark teal for header text */
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Button Styling */
        .btn {
            background-color: #004d40; /* Dark teal button color */
            color: #fff; /* White text for button */
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s, transform 0.2s;
            display: block;
            margin: 10px 0;
        }

        .btn:hover {
            background-color: #00796b; /* Lighter teal on hover */
            transform: scale(1.05);
        }

        a {
            display: inline-block;
            margin-top: 10px;
            color: #004d40; /* Teal color for links */
        }
    </style>
</head>
<body>
    <div class="background"></div> <!-- Background Image -->
    <div class="container">
        <h2>Your dates has been saved successfully!</h2>
        <a href="index.jsp" class="btn">Make another reservation</a> <!-- Button Link -->
        <a href="chooseHotel.jsp" class="btn">Choose Hotel</a> <!-- New "Choose Hotel" Button -->
        <a href="viewReservations.jsp" class="btn">View Reservations</a> <!-- View Reservations Button -->
        <a href="cancelReservation.jsp" class="btn">Cancel Reservation</a> <!-- Cancel Reservation Button -->
    </div>
</body>
</html>
