<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background: #fff;
        padding: 30px 40px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        width: 400px;
    }
    h1 {
        text-align: center;
        margin-bottom: 20px;
        font-size: 20px;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        text-align: left;
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }
    input[type="password"] {
        padding: 12px 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #0069d9;
    }
    .message {
        text-align: center;
        color: green;
        margin-bottom: 20px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Change Password</h1>
    <div class="message">${msg}</div>
    <form action="changePass" method="post">
        <label>Enter New Password:</label>
        <input type="password" placeholder="Enter new password" name="pass1" required>
        
        <label>Confirm Password:</label>
        <input type="password" placeholder="Confirm your password" name="pass2" required>
        
        <input type="submit" value="Change Password">
    </form>
</div>
</body>
</html>
