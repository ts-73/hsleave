<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .error-container {
            margin-top: 100px;
            padding: 20px;
            background-color: #fff;
            border: 2px solid #f44336;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }
        h2 {
            color: #f44336;
        }
        p {
            color: #333;
            font-size: 16px;
        }
        .back-link {
            margin-top: 20px;
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .back-link:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h2>Something went wrong!</h2>
        <p><strong>Error Details:</strong> ${exception}</p>
        <p><strong>Message:</strong> ${message}</p>
        
        <a href="index.jsp" class="back-link">Go Back to Home</a>
    </div>

</body>
</html>
