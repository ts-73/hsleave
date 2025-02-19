<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Application Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        h1 {
            color: #28a745;
        }
        p {
            font-size: 18px;
            margin-bottom: 20px;
        }
        a {
            text-decoration: none;
            background: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }
        a:hover {
            background: #0056b3;
        }
    </style>
    <script>
        setTimeout(function() {
            window.location.href = "employeeDashboard.jsp"; // Redirect after 5 seconds
        }, 50000000);
    </script>
</head>
<body>
    <div class="container">
        <h1>Leave Application Submitted Successfully</h1>
        <p>Your leave request has been submitted and is pending approval.</p>
        <p><strong>Type:</strong> <span id="leaveType"></span></p>
        <p><strong>From:</strong> <span id="startDate"></span> <strong>To:</strong> <span id="endDate"></span></p>
        <a href="employeeDashboard.jsp">Go back to Dashboard</a>
       
    </div>

    <script>
        // Fetch leave details from URL parameters (if available)
        const params = new URLSearchParams(window.location.search);
        document.getElementById("leaveType").textContent = params.get("type");
        document.getElementById("startDate").textContent = params.get("start");
        document.getElementById("endDate").textContent = params.get("end");
    </script>
</body>
</html>
