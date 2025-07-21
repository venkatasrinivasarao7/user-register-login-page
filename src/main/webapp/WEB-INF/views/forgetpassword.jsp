<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
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
div {
    display: flex;
    justify-content: center;
    gap: 20px; /* Adjust gap size here */
}


.container {
	background: #fff;
	padding: 30px 40px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	text-align: center;
	width: 350px;
}

h1 {
	margin-bottom: 20px;
	font-size: 20px;
	color: #333;
}

input[type="email"] {
	width: 100%;
	padding: 12px 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.btn {
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	margin: 5px;
	cursor: pointer;
	font-size: 14px;
}

.back-btn {
	background-color: #6c757d;
	color: white;
	text-decoration: none;
	display: inline-block;
}

.send-btn {
	background-color: #007bff;
	color: white;
}

.back-btn:hover {
	background-color: #5a6268;
}

.send-btn:hover {
	background-color: #0069d9;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Forgot Password</h1>
		<form action="setUpPass" method="post">
			<input type="email" name="email"
				placeholder="Enter your username or email" required>
			<div>
				<a href="login" class="btn back-btn">Back</a> <span
					style="display: inline-block; width: 20px;"></span> <input
					type="submit" class="btn send-btn" value="Send">
			</div>

		</form>
	</div>
</body>
</html>
