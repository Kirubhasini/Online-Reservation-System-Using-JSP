<%@ page import="java.sql.*, java.io.*" %>
<html>
<head>
    <title>Submit Reservation</title>
</head>
<body>
<%
    // Get form data
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String reservationDate = request.getParameter("reservation_date");
    String reservationTime = request.getParameter("reservation_time");
    String guests = request.getParameter("guests");

    // Debugging: Print form data to verify it's being received
    out.println("Received data: Name=" + name + ", Email=" + email + ", Date=" + reservationDate + ", Time=" + reservationTime + ", Guests=" + guests + "<br>");

    // Database connection setup for PostgreSQL
    Connection conn = null;
    PreparedStatement ps = null;

    try {
        // Establish connection to the PostgreSQL database
        Class.forName("org.postgresql.Driver"); // PostgreSQL JDBC Driver
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/reservation", "postgres", "kiru@04");

        // Debugging: Connection success message
        out.println("Database connection established successfully.<br>");

        // Convert reservationDate String to java.sql.Date
        java.sql.Date sqlReservationDate = java.sql.Date.valueOf(reservationDate);

        // Ensure reservationTime is in HH:mm:ss format
        if (!reservationTime.matches("\\d{2}:\\d{2}")) {
            out.println("Invalid time format. Please use HH:mm format.<br>");
            return; // Stop further processing if the time format is invalid
        } else {
            reservationTime += ":00"; // Append seconds if not provided
        }

        // Convert reservationTime String to java.sql.Time
        java.sql.Time sqlReservationTime = java.sql.Time.valueOf(reservationTime);

        // Insert reservation into the database
        String query = "INSERT INTO reservation (name, email, reservation_date, reservation_time, guests) VALUES (?, ?, ?, ?, ?)";
        ps = conn.prepareStatement(query);
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setDate(3, sqlReservationDate); // Use the converted date here
        ps.setTime(4, sqlReservationTime); // Use the converted time here
        ps.setInt(5, Integer.parseInt(guests)); // Convert guests to int

        int result = ps.executeUpdate();

        if (result > 0) {
            // Redirect to success page without outputting any additional text
            response.sendRedirect("success.jsp");
        } else {
            out.println("Error in saving reservation.<br>");
        }

    } catch (SQLException sqlEx) {
        out.println("Database error: " + sqlEx.getMessage() + "<br>");
    } catch (IllegalArgumentException iae) {
        out.println("Invalid date or time format. Please use YYYY-MM-DD for date and HH:mm:ss for time.<br>");
    } catch (Exception e) {
        // Capture and display the stack trace for any other exceptions
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        e.printStackTrace(pw);
        out.println("<pre>" + sw.toString() + "</pre>");
    } finally {
        try {
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            out.println("Error closing resources: " + e.getMessage() + "<br>");
        }
    }
%>
</body>
</html>
