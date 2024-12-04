<%@ page import="java.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Reservations</title>
    <!-- Inserting CSS Styles directly into JSP -->
    <style>
        /* General Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1507652313519-d4e9174996dd?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'); /* Replace with your image URL */
            background-size: cover; /* Cover the entire background */
            background-position: center; /* Center the background image */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; /* Stack heading and form vertically */
            min-height: 100vh; /* Full viewport height */
        }

        /* Content Box Styling */
        .content-box {
            background-color: rgba(139, 69, 19, 0.7); /* Brown background with 70% opacity */
            padding: 20px;
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
            width: 80%; /* Responsive width */
            max-width: 600px; /* Maximum width for larger screens */
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

        /* Table Styling */
        table {
            margin-top: 20px;
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Link Styling */
        a {
            margin-top: 20px;
            display: block;
            text-align: center;
            text-decoration: none;
            color: black; /* Change color to black */
            font-weight: bold; /* Optional: Make the link bold */
        }

        a:hover {
            color: #4CAF50; /* Change color on hover if desired */
        }
    </style>
</head>
<body>
    <div class="content-box">
        <h2>All Reservations</h2>

        <%
            // Database connection setup
            Connection conn = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            try {
                // Establish connection to the PostgreSQL database
                Class.forName("org.postgresql.Driver"); // PostgreSQL JDBC Driver
                conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/reservation", "postgres", "kiru@04");

                // Query to select all reservations
                String query = "SELECT * FROM reservation";
                ps = conn.prepareStatement(query);
                rs = ps.executeQuery();

                // Check if there are any reservations
                if (!rs.isBeforeFirst()) {
                    out.println("<p>No reservations found.</p>");
                } else {
                    // Display reservations in a table
                    out.println("<table>");
                    out.println("<tr><th>Name</th><th>Email</th><th>Date</th><th>Time</th><th>Guests</th></tr>");

                    // Loop through the result set and display each reservation
                    while (rs.next()) {
                        String name = rs.getString("name");
                        String email = rs.getString("email");
                        String date = rs.getString("reservation_date");
                        String time = rs.getString("reservation_time");
                        int guests = rs.getInt("guests");

                        out.println("<tr>");
                        out.println("<td>" + name + "</td>");
                        out.println("<td>" + email + "</td>");
                        out.println("<td>" + date + "</td>");
                        out.println("<td>" + time + "</td>");
                        out.println("<td>" + guests + "</td>");
                        out.println("</tr>");
                    }
                    out.println("</table>");
                }

            } catch (Exception e) {
                // Capture and display the stack trace in case of an error
                StringWriter sw = new StringWriter();
                PrintWriter pw = new PrintWriter(sw);
                e.printStackTrace(pw);
                out.println("<pre>" + sw.toString() + "</pre>");
            } finally {
                try {
                    if (rs != null) rs.close();
                    if (ps != null) ps.close();
                    if (conn != null) conn.close();
                } catch (SQLException e) {
                    // Handle any SQL exceptions during resource cleanup
                    StringWriter sw = new StringWriter();
                    PrintWriter pw = new PrintWriter(sw);
                    e.printStackTrace(pw);
                    out.println("<pre>" + sw.toString() + "</pre>");
                }
            }
        %>

        <a href="index.jsp">Make another reservation</a>
    </div>
</body>
</html>
