<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Leave" %>
<%@ page import="dao.LeaveDAO" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Leave Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 900px;
            margin: auto;
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
        h1 {
            text-align: center;
            color: #333;
        }
        .statistics {
            display: flex;
            justify-content: space-around;
            margin-top: 20px;
        }
        .statistics div {
            padding: 10px;
            background: #f1f1f1;
            border-radius: 5px;
            width: 30%;
            text-align: center;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Leave Reports</h1>
        
        <%-- Fetch leave data from the database using LeaveDAO --%>
        <%
            LeaveDAO leaveDAO = new LeaveDAO();
            List<Leave> leaveList = leaveDAO.getAllLeaveRequests();
        %>

        <%-- Display statistics --%>
        <div class="statistics">
            <div>
                <h3>Total Leave Requests</h3>
                <p><%= leaveList.size() %></p>
            </div>
            <div>
                <h3>Approved Leaves</h3>
                <p>
                    <%= leaveList.stream().filter(l -> "Approved".equals(l.getStatus())).count() %>
                </p>
            </div>
            <div>
                <h3>Pending Leaves</h3>
                <p>
                    <%= leaveList.stream().filter(l -> "Pending".equals(l.getStatus())).count() %>
                </p>
            </div>
        </div>

        <%-- Display leave requests in a table --%>
        <% if (leaveList.isEmpty()) { %>
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
                </tr>
                <% for (Leave leave : leaveList) { %>
                    <tr>
                        <td><%= leave.getLeaveType() %></td>
                        <td><%= leave.getEmployeeId() %></td>
                        <td><%= leave.getStartDate() %></td>
                        <td><%= leave.getEndDate() %></td>
                        <td><%= leave.getReason() %></td>
                        <td><%= leave.getStatus() %></td>
                    </tr>
                <% } %>
            </table>
        <% } %>

        <a href="adminDashboard.jsp" class="back-btn">Go Back to Dashboard</a>
    </div>

</body>
</html>
