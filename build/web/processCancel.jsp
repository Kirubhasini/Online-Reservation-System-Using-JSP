<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
    <title>Process Cancel Reservation</title>
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
            position: relative; /* For positioning the overlay */
            overflow: hidden; /* Prevent overflow */
        }

        /* Background Image */
        .background {
            background-image: url('https://images.unsplash.com/photo-1698752160723-eba0dd15a984?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            position: absolute; /* Positioning for overlay */
            top: 0; /* Align to top */
            left: 0; /* Align to left */
            right: 0; /* Align to right */
            bottom: 0; /* Align to bottom */
            z-index: -1; /* Behind the content */
        }

        /* Overlay for Opacity */
        .overlay {
            background: rgba(0, 0, 0, 0.5); /* Black with 50% opacity */
            position: absolute; /* Positioning for overlay */
            top: 0; /* Align to top */
            left: 0; /* Align to left */
            right: 0; /* Align to right */
            bottom: 0; /* Align to bottom */
            z-index: 0; /* Just above the background */
        }

        /* Form Container Styling */
        .container {
            background-color: rgba(0, 0, 0, 0.7); /* Dark background with some transparency */
            padding: 30px;
            border-radius: 15px; /* Rounded corners */
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.6); /* Subtle shadow for depth */
            width: 350px; /* Fixed width for the container */
            position: relative; /* For positioning within the overlay */
            z-index: 1; /* On top of the overlay */
        }

        h2 {
            color: #ffeb3b; /* Bright yellow for header */
            margin-bottom: 20px;
            font-size: 24px; /* Increased font size */
        }

        /* Button Styling */
        .btn {
            background-color: #ffeb3b; /* Button color */
            color: #000; /* Dark text for button */
            border: none;
            padding: 10px 20px; /* Padding */
            font-size: 16px; /* Font size */
            border-radius: 5px; /* Rounded corners */
            cursor: pointer; /* Pointer on hover */
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s, transform 0.2s; /* Transition effects */
            display: block; /* Block display for stacking */
            margin: 10px 0; /* Margin for spacing */
        }

        .btn:hover {
            background-color: #ffd600; /* Darker yellow on hover */
            transform: scale(1.05); /* Scale effect */
        }

        a {
            display: inline-block; /* Inline-block for padding */
            margin-top: 10px; /* Margin for spacing */
            color: #ffeb3b; /* Bright yellow for link text */
        }
    </style>
</head>
<body>
    <div class="background"></div>
    <div class="overlay"></div>
    <div class="container">
        <h2>Processing Cancellation</h2>
        <%
            String email = request.getParameter("email");
            String reservationDate = request.getParameter("reservation_date");

            Connection con = null;
            PreparedStatement ps = null;

            try {
                // Load PostgreSQL driver
                Class.forName("org.postgresql.Driver");

                // Connect to the database (replace with your database details)
                con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/reservation", "postgres", "kiru@04");

                // SQL query to delete the reservation based on email and reservation_date
                String query = "DELETE FROM reservation WHERE email = ? AND reservation_date = ?";
                ps = con.prepareStatement(query);

                // Set the email parameter
                ps.setString(1, email);

                // Cast reservation_date to SQL date
                ps.setDate(2, java.sql.Date.valueOf(reservationDate));

                // Execute the query
                int result = ps.executeUpdate();

                // Output the result
                if (result > 0) {
                    out.println("<h3>Reservation cancelled successfully.</h3>");
                } else {
                    out.println("<h3>No reservation found for the given details.</h3>");
                }

            } catch (Exception e) {
                // Print a user-friendly error message
                out.println("<h3>Error occurred while cancelling the reservation: " + e.getMessage() + "</h3>");
            } finally {
                if (ps != null) ps.close();
                if (con != null) con.close();
            }
        %>
        <a href="index.jsp" class="btn">Back to Reservation</a>
    </div>
</body>
</html>
