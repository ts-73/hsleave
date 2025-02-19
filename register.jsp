<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Employee Leave Application System</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 500px;
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
        input[type="text"], input[type="password"], input[type="email"], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .error {
            color: red;
            font-size: 14px;
            text-align: center;
        }
        p {
            text-align: center;
        }
        a {
            color: #4CAF50;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Register</h2>
        
        <!-- Error message display if registration fails -->
        <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
        </c:if>

        <form action="RegisterServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required class="form-control"/>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required class="form-control"/>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required class="form-control"/>

            <label for="role">Role:</label>
            <select id="role" name="role" required class="form-control">
                <option value="employee">Employee</option>
                <option value="admin">Admin</option>
            </select>

            <label for="department">Department:</label>
            <input type="text" id="department" name="department" required class="form-control"/>

            <button type="submit">Register</button>
        </form>

        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>

</body>
</html>
