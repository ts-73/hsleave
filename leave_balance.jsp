<%@ page import="java.util.Map" %>
<%@ page import="dao.LeaveDAO" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Retrieve employeeId from session
    Integer employeeId = (Integer) session.getAttribute("employeeId");
    System.out.println("Session Employee ID (JSP): " + employeeId); // Debugging log

    if (employeeId == null) {
        System.out.println("Redirecting to login.jsp due to null session");
        response.sendRedirect("login.jsp");
        return;
    }

    // Initialize LeaveDAO
    LeaveDAO leaveDAO = new LeaveDAO();

    // Fetch leave balance for the logged-in employee
    Map<String, Integer> leaveBalance = leaveDAO.getLeaveBalance(employeeId);
    
    // Check if the employee has leave balance, if not insert default leave balance
    if (leaveBalance == null || leaveBalance.isEmpty()) {
        leaveDAO.insertDefaultLeaveBalance(employeeId);  // Insert default leave balances
        leaveBalance = leaveDAO.getLeaveBalance(employeeId);  // Fetch again after insertion
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Balance</title>
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
            width: 50%;
            max-width: 500px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background: #f9f9f9;
        }
        .back-btn {
            text-decoration: none;
            background: #4CAF50;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            display: inline-block;
            margin-top: 20px;
        }
        .back-btn:hover {
            background: #45a049;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Your Leave Balance</h1>
        
        <% if (leaveBalance == null || leaveBalance.isEmpty()) { %>
            <p>No leave balance information available.</p>
        <% } else { %>
            <table>
                <tr>
                    <th>Leave Type</th>
                    <th>Remaining Days</th>
                </tr>
                <% for (Map.Entry<String, Integer> entry : leaveBalance.entrySet()) { %>
                    <tr>
                        <td><%= entry.getKey() %></td>
                        <td><%= entry.getValue() %></td>
                    </tr>
                <% } %>
            </table>
        <% } %>

        <a href="employeeDashboard.jsp" class="back-btn">Go Back to Dashboard</a>
    </div>

</body>
</html>
