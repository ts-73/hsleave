<%@ page import="java.util.List" %>
<%@ page import="dao.LeaveDAO" %>
<%@ page import="model.Leave" %>
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

    // Fetch leave history for the logged-in employee
    LeaveDAO leaveDAO = new LeaveDAO();
    List<Leave> leaveList = leaveDAO.getLeaveHistory(employeeId);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Leave Status</title>
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
            max-width: 800px;
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
        .status-pending { color: orange; }
        .status-approved { color: green; }
        .status-rejected { color: red; }
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
        <h1>Your Leave Status</h1>
        
        <% if (leaveList.isEmpty()) { %>
            <p>No leave applications found.</p>
        <% } else { %>
            <table>
                <tr>
                    <th>Leave Type</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Reason</th>
                    <th>Status</th>
                </tr>
                <% for (Leave leave : leaveList) { %>
                    <tr>
                        <td><%= leave.getLeaveType() %></td>
                        <td><%= leave.getStartDate() %></td>
                        <td><%= leave.getEndDate() %></td>
                        <td><%= leave.getReason() %></td>
                        <td class="status-<%= leave.getStatus().toLowerCase() %>"><%= leave.getStatus() %></td>
                    </tr>
                <% } %>
            </table>
        <% } %>

        <a href="employeeDashboard.jsp" class="back-btn">Go Back to Dashboard</a>
    </div>

</body>
</html>
