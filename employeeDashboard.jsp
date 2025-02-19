<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Employee Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .welcome {
            font-size: 18px;
            text-align: center;
            margin-top: 20px;
        }
        .employee-links {
            display: flex;
            justify-content: space-around;
            margin-top: 40px;
        }
        .employee-links a {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 18px;
            text-align: center;
            width: 200px;
        }
        .employee-links a:hover {
            background-color: #45a049;
        }
        .logout {
            text-align: center;
            margin-top: 20px;
        }
        .logout a {
            text-decoration: none;
            color: #333;
            font-size: 16px;
        }
        .logout a:hover {
            color: #4CAF50;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Employee Dashboard</h2>
        
        <!-- Display employee's name from session -->
        <div class="welcome">
            <p>Welcome, <strong>${sessionScope.username}</strong></p>
        </div>

        <div class="employee-links">
            <a href="apply_leave.jsp">Apply for Leave</a>
            <a href="view_leave_status.jsp">View Leave Status</a>
            <a href="leave_balance.jsp">Leave Balance</a>
        </div>

        <div class="logout">
            <p><a href="LogoutServlet">Logout</a></p>
        </div>
    </div>

</body>
</html>
