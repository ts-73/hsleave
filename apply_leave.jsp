<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Apply Leave</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
        }
        input[type="text"], input[type="date"], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            height: 100px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
            text-align: center;
        }
    </style>
    
    <script>
        // Set the minimum date for the "From Date" field to today's date
        window.onload = function() {
            const today = new Date().toISOString().split('T')[0];
            document.getElementById("fromDate").setAttribute("min", today);
            document.getElementById("toDate").setAttribute("min", today);
        }

        // Ensure "To Date" is always after or equal to "From Date"
        function validateDateRange() {
            const fromDate = document.getElementById("fromDate").value;
            const toDate = document.getElementById("toDate").value;
            if (fromDate && toDate && toDate < fromDate) {
                alert("To Date must be later than From Date");
                document.getElementById("toDate").value = '';
            }
        }
    </script>
</head>
<body>

    <div class="container">
        <h2>Apply for Leave</h2>
        
        <!-- Display error message if there is any -->
        <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
        </c:if>
        
        <!-- Apply Leave Form -->
        <form action="ApplyLeaveServlet" method="POST" onsubmit="validateDateRange()">
            
            <!-- Employee ID Field -->
            <label for="employeeId">Employee ID:</label>
            <input type="text" id="employeeId" name="employeeId" required><br><br>

            <label for="leaveType">Leave Type:</label>
            <select id="leaveType" name="leaveType" required>
                <option value="">Select Leave Type</option>
                <option value="Sick Leave">Sick Leave</option>
                <option value="Casual Leave">Casual Leave</option>
                <option value="Vacation Leave">Vacation Leave</option>
            </select><br><br>

            <label for="fromDate">From Date:</label>
            <input type="date" id="fromDate" name="fromDate" required><br><br>

            <label for="toDate">To Date:</label>
            <input type="date" id="toDate" name="toDate" required><br><br>

            <label for="reason">Reason:</label>
            <textarea id="reason" name="reason" required></textarea><br><br>

            <input type="submit" value="Apply for Leave">
        </form>
    </div>

</body>
</html>
