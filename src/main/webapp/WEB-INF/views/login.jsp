<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f0f2f5;
        margin: 0;
    }
    .login-container {
        width: 100%;
        max-width: 400px;
        background-color: #fff;
        margin: 80px auto;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .login-container h2 {
        text-align: center;
        margin-bottom: 30px;
        color: #333;
    }
    form {
        display: flex;
        flex-direction: column;
    }
    label {
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }
    input[type="email"],
    input[type="password"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 15px;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 12px;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    .message {
        text-align: center;
        color: red;
        margin-bottom: 20px;
       
    }
    .link {
    text-align: center;
    margin-top: 15px;
}
.link a {
    text-decoration: none;
    color: #4CAF50;
}
.link a:hover {
    text-decoration: underline;
}
    
</style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <div class="message"><b>${msg}</b></div>
        <form action="loginpage" method="post">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required>

            <label for="password">Password</label>
            <input type="password" name="password" id="password" required>
			
            <input type="submit" value="Login"><div class="link">
<p>do you forget the password?</p>  <a href ="forgetpass">forget password</a>  <p>Don't have an account? <a href="register">Register here</a></p>
</div>

        </form>
    </div>
</body>
</html>
