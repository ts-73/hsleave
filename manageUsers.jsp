<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Users</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f7f8f9;
            margin: 0;
            padding: 15px;
        }

        h1 {
            text-align: center;
            font-size: 32px;
            color: #4CAF50;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 30px;
            font-size: 16px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        button {
            background-color: #ff6347;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #e55347;
        }

        a {
            background-color: #4CAF50;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 10px;
            font-size: 14px;
        }

        a:hover {
            background-color: #45a049;
        }

        .success-message {
            color: #28a745;
            text-align: center;
            font-weight: 600;
        }

        .error-message {
            color: #dc3545;
            text-align: center;
            font-weight: 600;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .search-bar {
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding-bottom: 15px;
        }

        .search-bar input {
            padding: 10px;
            border-radius: 4px;
            border: 1px solid #ccc;
            width: 75%;
            font-size: 16px;
        }

        .search-bar button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
            border: none;
        }

        .search-bar button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Manage Users</h1>

        <!-- Search Form -->
        <div class="search-bar">
            <form action="manageUsers" method="GET">
                <input type="text" name="searchQuery" placeholder="Search by username or email" value="${param.searchQuery}">
                <button type="submit">Search</button>
            </form>
        </div>

        <!-- Display success or error message -->
        <c:if test="${param.success != null}">
            <p class="success-message">User added successfully!</p>
        </c:if>
        <c:if test="${param.error != null}">
            <p class="error-message">Error adding user!</p>
        </c:if>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through all users and display them in a table -->
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.email}</td>
                        <td>${user.role}</td>
                        <td>${user.department}</td>
                        <td>
                            <!-- Edit button -->
                            <a href="editUser.jsp?id=${user.id}">Edit</a>
                            <!-- Delete button -->
                            <form action="manageUsers" method="POST" style="display:inline;">
                                <input type="hidden" name="action" value="deleteUser">
                                <input type="hidden" name="userId" value="${user.id}">
                                <button type="submit" onclick="return confirm('Are you sure you want to delete this user?');">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
