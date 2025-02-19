<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Success</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f8f9;
            margin: 0;
            padding: 20px;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #28a745;
            font-size: 28px;
        }

        .success-message {
            color: #28a745;
            text-align: center;
            font-weight: bold;
            font-size: 18px;
            margin: 20px 0;
        }

        .back-button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            text-align: center;
            text-decoration: none;
        }

        .back-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Successful</h1>
        <p class="success-message">The user details were successfully updated.</p>
        
        <!-- Button to go back to Manage Users page -->
        <a href="manageUsers.jsp" class="back-button">Back to Manage Users</a>
    </div>
</body>
</html>
