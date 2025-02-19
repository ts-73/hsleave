<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 100px auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            color: #4CAF50;
        }
        p {
            font-size: 18px;
            color: #333;
        }
        .employee-id {
            font-weight: bold;
            font-size: 20px;
            color: #d9534f;
            background-color: #f9f9f9;
            padding: 10px;
            display: inline-block;
            margin-top: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .btn {
            text-decoration: none;
            background-color: #4CAF50;
            color: white;
            padding: 15px 30px;
            border-radius: 5px;
            font-size: 18px;
            margin-top: 20px;
            display: inline-block;
        }
        .btn:hover {
            background-color: #45a049;
        }
        .copy-btn {
            cursor: pointer;
            background-color: #007bff;
            color: white;
            padding: 8px 15px;
            border: none;
            font-size: 16px;
            border-radius: 5px;
            margin-left: 10px;
        }
        .copy-btn:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function copyEmployeeId() {
            var empId = document.getElementById("employeeId").innerText;
            navigator.clipboard.writeText(empId).then(function() {
                alert("Employee ID copied: " + empId);
            }, function(err) {
                alert("Failed to copy Employee ID.");
            });
        }
    </script>
</head>
<body>

    <div class="container">
        <h1>Registration Successful</h1>
        <p>Congratulations! You have successfully registered for the Employee Leave System.</p>
        
        <!-- Display Employee ID -->
        <p>Your Employee ID is: <span id="employeeId" class="employee-id"><%= session.getAttribute("employeeId") %></span></p>
        
        <button class="copy-btn" onclick="copyEmployeeId()">Copy</button>
        
        <br><br>
        <a href="login.jsp" class="btn">Go to Login</a>
    </div>

</body>
</html>
