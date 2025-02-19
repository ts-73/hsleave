<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Approval Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            width: 80%;
            max-width: 600px;
        }
        h1 {
            color: green;
        }
        p {
            font-size: 18px;
        }
        .back-btn {
            text-decoration: none;
            background: #007bff;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 20px;
        }
        .back-btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Leave Request Successfully Processed!</h1>
        <p>The leave request has been <strong>approved</strong> or <strong>rejected</strong> successfully.</p>
        
        <a href="adminDashboard.jsp" class="back-btn">Go Back to Dashboard</a>
    </div>

</body>
</html>
