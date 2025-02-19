<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page session="true" %>

<%@ page import="java.sql.*" %>

<html>
<head>
    <title>Admin Settings - Employee Leave System</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 50%;
            margin: 50px auto;
            background: white;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            width: 100%;
            margin-top: 15px;
            border-radius: 5px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Admin Settings</h2>
        
        <form action="success.jsp" method="post">
            <label for="leaveLimit">Annual Leave Limit (Days):</label>
            <input type="number" id="leaveLimit" name="leaveLimit">
            
            <label for="notifyAdmin">Enable Email Notifications:</label>
            <select id="notifyAdmin" name="notifyAdmin">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            
            <label for="password">Change Admin Password:</label>
            <input type="password" id="password" name="password">
            
            <label for="companyName">Company Name:</label>
            <input type="text" id="companyName" name="companyName">
            
            <label for="workHours">Work Hours Per Day:</label>
            <input type="number" id="workHours" name="workHours">
            
            <label for="overtimePolicy">Overtime Policy:</label>
            <input type="text" id="overtimePolicy" name="overtimePolicy">
            
            <label for="sickLeaveLimit">Sick Leave Limit:</label>
            <input type="number" id="sickLeaveLimit" name="sickLeaveLimit">
            
            <label for="casualLeaveLimit">Casual Leave Limit:</label>
            <input type="number" id="casualLeaveLimit" name="casualLeaveLimit">
            
            <label for="maternityLeaveLimit">Maternity Leave Limit:</label>
            <input type="number" id="maternityLeaveLimit" name="maternityLeaveLimit">
            
            <label for="paternityLeaveLimit">Paternity Leave Limit:</label>
            <input type="number" id="paternityLeaveLimit" name="paternityLeaveLimit">
            
            <label for="holidayList">Company Holidays:</label>
            <input type="text" id="holidayList" name="holidayList">
            
            <label for="leaveApproval">Leave Approval Process:</label>
            <select id="leaveApproval" name="leaveApproval">
                <option value="auto">Automatic</option>
                <option value="manual">Manual</option>
            </select>
            
            <label for="probationPeriod">Probation Period (Months):</label>
            <input type="number" id="probationPeriod" name="probationPeriod">
            
            <label for="retirementAge">Retirement Age:</label>
            <input type="number" id="retirementAge" name="retirementAge">
            
            <label for="leaveCarryForward">Leave Carry Forward Policy:</label>
            <select id="leaveCarryForward" name="leaveCarryForward">
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>
            
            <label for="weekendPolicy">Weekend Policy:</label>
            <input type="text" id="weekendPolicy" name="weekendPolicy">
            
            <label for="remoteWork">Remote Work Policy:</label>
            <input type="text" id="remoteWork" name="remoteWork">
            
            <label for="trainingBudget">Annual Training Budget ($):</label>
            <input type="number" id="trainingBudget" name="trainingBudget">
            
            <label for="performanceReview">Performance Review Frequency:</label>
            <input type="text" id="performanceReview" name="performanceReview">
            
            <label for="bonusPolicy">Bonus Policy:</label>
            <input type="text" id="bonusPolicy" name="bonusPolicy">
            
            <a href="success.jsp"><button type="submit">Save Changes</button></a>
        </form>
    </div>
</body>
</html>