<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        .form-group {
            margin: 15px 0;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"], input[type="email"], input[type="password"], select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit User</h1>

        <form action="manageUsers?action=updateUser" method="POST">

            <!-- Pass the User ID -->
            <input type="hidden" name="id" value="${user.id}">

            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" value="${user.username}" required>
            </div>

            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${user.email}" required>
            </div>

            <div class="form-group">
                <label for="role">Role:</label>
                <select id="role" name="role" required>
                    <option value="admin" ${user.role == 'admin' ? 'selected' : ''}>Admin</option>
                    <option value="employee" ${user.role == 'employee' ? 'selected' : ''}>Employee</option>
                </select>
            </div>

            <div class="form-group">
                <label for="department">Department:</label>
                <input type="text" id="department" name="department" value="${user.department}" required>
            </div>

            <div class="form-group">
                <label for="password">New Password (Optional):</label>
                <input type="password" id="password" name="password" placeholder="Enter a new password (leave empty to keep current)">
            </div>

            <button type="submit">Update User</button>
        </form>
    </div>
</body>
</html>
