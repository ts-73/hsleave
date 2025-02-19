<%@ page import="java.util.List" %>
<%@ page import="dao.LeaveDAO" %>
<%@ page import="model.Leave" %>
<%@ page session="true" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<%
    // Fetch all leave requests (not tied to a specific employee)
    LeaveDAO leaveDAO = new LeaveDAO();
    List<Leave> leaveRequests = leaveDAO.getAllLeaveRequests();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Leave Requests</title>
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
        .action-btn {
            text-decoration: none;
            background: #4CAF50;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }
        .reject-btn {
            background: #dc3545;
        }
        .action-btn:hover, .reject-btn:hover {
            background: #0056b3;
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
        <h1>Leave Requests</h1>
        
        <% if (leaveRequests.isEmpty()) { %>
            <p>No leave requests found.</p>
        <% } else { %>
            <table>
                <tr>
                    <th>Leave Type</th>
                    <th>Employee ID</th>
                    <th>Start Date</th>
                    <th>End Date</th>
                    <th>Reason</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <% for (Leave leave : leaveRequests) { %>
                    <tr>
                        <td><%= leave.getLeaveType() %></td>
                        <td><%= leave.getEmployeeId() %></td>
                        <td><%= leave.getStartDate() %></td>
                        <td><%= leave.getEndDate() %></td>
                        <td><%= leave.getReason() %></td>
                        <td class="status-<%= leave.getStatus().toLowerCase() %>"><%= leave.getStatus() %></td>
                        <td>
                            <% if ("Pending".equals(leave.getStatus())) { %>
                                <form action="ApproveLeaveServlet" method="POST">
                                    <input type="hidden" name="leaveId" value="<%= leave.getLeaveId() %>">
                                    <input type="hidden" name="status" value="Approved">
                                    <button type="submit" class="action-btn">Approve</button>
                                </form>
                                <form action="ApproveLeaveServlet" method="POST">
                                    <input type="hidden" name="leaveId" value="<%= leave.getLeaveId() %>">
                                    <input type="hidden" name="status" value="Rejected">
                                    <button type="submit" class="action-btn reject-btn">Reject</button>
                                </form>
                            <% } else { %>
                                <span><%= leave.getStatus() %></span>
                            <% } %>
                        </td>
                    </tr>
                <% } %>
            </table>
        <% } %>

        <a href="adminDashboard.jsp" class="back-btn">Go Back to Dashboard</a>
    </div>

</body>
</html>
