<%@page import="java.sql.*"%>
<%
    Connection connection = null;
    try {
        // Load the PostgreSQL driver
        Class.forName("org.postgresql.Driver");
        
        // Connect to the PostgreSQL database
        connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/reservation", "postgres", "kiru@04");

        // Check the connection
        if (connection != null) {
            out.println("Connected to PostgreSQL database successfully!");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("Database connection failed: " + e.getMessage());
    } finally {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>