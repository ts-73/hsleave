<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            text-align: center;
            margin-top: 100px;
        }
        .error-container {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 20px;
            width: 50%;
            margin: 0 auto;
            border-radius: 5px;
        }
        .error-container h1 {
            color: red;
        }
        .error-container p {
            color: #555;
        }
        .error-container a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="error-container">
        <h1>Error</h1>
        <p>We encountered an error while processing your request. Please try again later.</p>
        <p>If you continue to face issues, please <a href="contactUs.jsp">contact us</a>.</p>
        <p><a href="login.jsp">Go back to login page</a></p>
    </div>
</body>
</html>
