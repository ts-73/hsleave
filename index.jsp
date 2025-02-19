<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Welcome to Employee Leave Application System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        .container {
            width: 90%;
            max-width: 900px;
            margin: 100px auto;
            padding: 30px 20px;
            background-color: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.15);
            text-align: center;
            border-radius: 10px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h1 {
            color: #4CAF50;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            color: #333;
            margin-bottom: 20px;
            line-height: 1.6;
        }

        .action-links {
            margin-top: 30px;
        }

        .action-links a {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 1rem;
            margin: 10px;
            transition: all 0.3s ease-in-out;
        }

        .action-links a:hover {
            background-color: #45a049;
            transform: translateY(-3px);
        }

        footer {
            margin-top: 50px;
            text-align: center;
            font-size: 0.9rem;
            color: #777;
            animation: slideUp 1.5s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.9);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to the Employee Leave Application System</h1>
        <p>Your one-stop solution to apply, manage, and track your leaves seamlessly.</p>

        <div class="action-links">
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
    </div>

    <footer>
        <p>&copy; 2025 Employee Leave Application System. All rights reserved.</p>
    </footer>

</body>
</html>
