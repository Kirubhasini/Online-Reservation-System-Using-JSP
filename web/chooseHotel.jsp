<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Choose Your Hotel</title>
    <style>
        /* General Page Styling */
        body {
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            padding: 20px; /* Add some padding */
            color: #fff;
            text-align: center;
            position: relative;
            overflow-x: hidden; /* Disable horizontal scrolling */
        }

        /* Background Image */
        .background {
            background-image: url('https://images.unsplash.com/photo-1586204644281-ea6e30baad36?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
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
            background-color: rgba(0, 255, 255, 0.15);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
            max-width: 600px;
            margin: 20px auto; /* Add margin for spacing */
        }

        h2 {
            color: #004d40;
            margin-bottom: 20px;
            font-size: 24px;
        }

        /* Hotel Details */
        .hotel {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            text-align: left;
            display: flex;
            justify-content: space-between;
            align-items: center;
            color: #333;
        }

        .hotel img {
            width: 200px;
            height: 150px;
            border-radius: 5px;
        }

        .hotel h3 {
            margin-top: 0;
            margin-right: 20px;
        }

        .terms {
            text-align: left;
            margin-top: 20px;
        }

        .btn {
            background-color: #004d40;
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
            background-color: #00796b;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

    <div class="background"></div> <!-- Background Image -->
    <div class="container">
        <h2>Choose Your Hotel</h2>

        <form action="submitHotelChoice.jsp" method="post">
            <div class="hotel">
                <input type="radio" id="hotel1" name="hotel" value="Hotel Sunshine|12000" required>
                <div>
                    <h3>Hotel Sunshine</h3>
                    <p>Price per night: ₹12,000</p>
                    <p>Location: Downtown City</p>
                </div>
                <img src="https://images.unsplash.com/photo-1505819244306-ef53954f9648?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzfDIyfGRvd250b3duJTIwaG90ZWx8fGVufDB8fHx8fDA%3D" alt="Hotel Sunshine">
            </div>

            <div class="hotel">
                <input type="radio" id="hotel2" name="hotel" value="Beachside Resort|15000" required>
                <div>
                    <h3>Beachside Resort</h3>
                    <p>Price per night: ₹15,000</p>
                    <p>Location: Beachfront</p>
                </div>
                <img src="https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzfDczfGJlYWNoZnJvbnQlMjBob3RlbHxlbnwwfHwwfHx8fDA%3D" alt="Beachside Resort">
            </div>

            <div class="hotel">
                <input type="radio" id="hotel3" name="hotel" value="Mountain View Hotel|13500" required>
                <div>
                    <h3>Mountain View Hotel</h3>
                    <p>Price per night: ₹13,500</p>
                    <p>Location: Mountain Hills</p>
                </div>
                <img src="https://plus.unsplash.com/premium_photo-1694475416476-d7f765fa9ff6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzfDQ2fG1vdW50YWluJTIwdmlld3xlbnwwfHwwfHx8fDA%3D" alt="Mountain View Hotel">
            </div>

            <div class="hotel">
                <input type="radio" id="hotel4" name="hotel" value="City Lights Inn|10000" required>
                <div>
                    <h3>City Lights Inn</h3>
                    <p>Price per night: ₹10,000</p>
                    <p>Location: City Center</p>
                </div>
                <img src="https://plus.unsplash.com/premium_photo-1672097247790-234855b64f1a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzfDQ4fGNpdHklMjBob3RlbCUyMGNlbnRlcnxlbnwwfHwwfHx8fDA%3D" alt="City Lights Inn">
            </div>

            <div class="hotel">
                <input type="radio" id="hotel5" name="hotel" value="Lakeside Retreat|14000" required>
                <div>
                    <h3>Lakeside Retreat</h3>
                    <p>Price per night: ₹14,000</p>
                    <p>Location: Near the Lake</p>
                </div>
                <img src="https://images.unsplash.com/photo-1524518668639-e6cc8c13ca08?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D" alt="Lakeside Retreat">
            </div>

            <div class="hotel">
                <input type="radio" id="hotel6" name="hotel" value="Desert Oasis|16000" required>
                <div>
                    <h3>Desert Oasis</h3>
                    <p>Price per night: ₹16,000</p>
                    <p>Location: Desert Region</p>
                </div>
                <img src="https://plus.unsplash.com/premium_photo-1697729686972-c721547b9e2f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzfDQ5fGRlc2VydCUyMGhvdGVsJTIwY29tcGxleHxlbnwwfHwwfHx8fDA%3D" alt="Desert Oasis">
            </div>

            <!-- Terms and Conditions -->
            <div class="terms">
                <h3>Terms and Conditions</h3>
                <p>By choosing a hotel, you agree to the following terms and conditions...</p>
                <ul>
                    <li>Check-in time is 2:00 PM and check-out time is 12:00 PM.</li>
                    <li>Early check-in or late check-out is subject to availability and additional charges.</li>
                    <li>All bookings are non-refundable and non-transferable.</li>
                    <li>Additional charges may apply for extra services or amenities.</li>
                </ul>
            </div>

            <!-- Submit Button -->
            <button class="btn" type="submit">Confirm Hotel Selection</button>
        </form>
    </div>

</body>
</html>
