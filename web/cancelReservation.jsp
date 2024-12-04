<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
    <title>Cancel Reservation</title>
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1445019980597-93fa8acb246c?q=80&w=2074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* Replace with your image URL */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }

        /* Form Container Styling */
        form {
            background-color: rgba(255, 255, 255, 0.9); /* White background with some transparency */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            width: 300px; /* Fixed width for the form */
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Form Elements */
        input[type="email"],
        input[type="date"] {
            width: 100%; /* Full width for inputs */
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px; /* Rounded corners for inputs */
            font-size: 14px;
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
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <form action="processCancel.jsp" method="post">
        <h2>Cancel a Reservation</h2>
        Email: <input type="email" name="email" required><br><br>
        Reservation Date: <input type="date" name="reservation_date" required><br><br>
        <input type="submit" value="Cancel Reservation">
    </form>
</body>
</html>
