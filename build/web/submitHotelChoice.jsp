<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get the selected hotel information
    String hotelChoice = request.getParameter("hotel");
    String[] hotelDetails = hotelChoice.split("\\|");
    
    String selectedHotel = hotelDetails[0]; // Hotel name
    String hotelPrice = hotelDetails[1]; // Hotel price

    // Redirect to payment.jsp with the hotel information
    response.sendRedirect("payment.jsp?hotel=" + selectedHotel + "&amount=" + hotelPrice);
%>
