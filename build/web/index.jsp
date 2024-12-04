<%@ page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online Reservation</title>
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1445019980597-93fa8acb246c?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* Background image URL */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
            flex-direction: column; /* Stack heading and form vertically */
        }

        /* Heading Styling */
        h2 {
            color: #8B4513; /* A brownish color */
            font-size: 36px;
            margin-bottom: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Text shadow for better readability */
        }


        /* Form Container Styling */
        form {
            background-color: rgba(255, 255, 255, 0.9); /* White background with some transparency */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            width: 320px; /* Adjusted width for form */
        }

        /* Form Elements */
        input[type="text"],
        input[type="email"],
        input[type="date"],
        input[type="time"],
        input[type="number"] {
            width: calc(100% - 20px); /* Full width with padding adjustment */
            padding: 10px; /* Padding for input fields */
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px; /* Rounded corners for inputs */
            font-size: 14px;
            box-sizing: border-box; /* Ensure padding doesn't overflow the container */
        }

        /* Submit Button */
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%; /* Full width button */
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Change color on hover */
        }
    </style>
</head>
<body>
    <h2>Make a Reservation</h2>
    <form action="submitReservation.jsp" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Date: <input type="date" name="reservation_date" required><br>
        Time: <input type="time" name="reservation_time" required><br>
        Guests: <input type="number" name="guests" required><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
