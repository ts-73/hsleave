<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            text-align: center;
            padding: 50px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
        }
        h2 {
            color: #721c24;
        }
        p {
            color: #721c24;
        }
        .btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            color: white;
            background-color: #dc3545;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #c82333;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registration Failed</h2>
    <p>Sorry, an error occurred while trying to register your account.</p>
    <p>Please try again or contact support if the issue persists.</p>
    <a href="register.jsp" class="btn">Try Again</a>
</div>

</body>
</html>
