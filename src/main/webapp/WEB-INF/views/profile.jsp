<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Profile</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	margin: 0;
	background-color: #f0f2f5;
}

.profile-container {
	width: 80%;
	max-width: 800px;
	background-color: #fff;
	margin: 50px auto;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.profile-header {
	text-align: center;
	margin-bottom: 30px;
}

.profile-header h1 {
	margin: 0;
	color: #333;
}

.profile-details {
	display: flex;
	flex-direction: column;
	align-items: center;
	row-gap: 15px;
}

.detail-item {
	width: 100%;
	max-width: 500px;
	background-color: #f9f9f9;
	padding: 10px 20px;
	border-radius: 8px;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
	display: flex;
	justify-content: space-between;
}

.label {
	font-weight: bold;
	color: #555;
	text-align: left;
}

.value {
	color: #333;
	text-align: right;
}

.profile-footer {
	text-align: center;
	margin-top: 30px;
}

.profile-footer a {
	text-decoration: none;
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border-radius: 5px;
	transition: background-color 0.3s ease;
}

.profile-footer a:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="profile-container">
		<div class="profile-header">
			<h1>${user.name}'s Profile</h1>
		</div>
		<div class="profile-details">
			<div class="detail-item">
				<div class="label">Name:</div>
				<div class="value">${user.name}</div>
			</div>

			<div class="detail-item">
				<div class="label">Email:</div>
				<div class="value">${user.email}</div>
			</div>

			<div class="detail-item">
				<div class="label">Password:</div>
				<div class="value">${user.password}</div>
			</div>

			<div class="detail-item">
				<div class="label">Technical Skills:</div>
				<div class="value">${user.lang}</div>
			</div>

			<div class="detail-item">
				<div class="label">Locations to Work:</div>
				<div class="value">${user.locations}</div>
			</div>

			<div class="detail-item">
				<div class="label">Job Role:</div>
				<div class="value">${user.job_role}</div>
			</div>

			<div class="detail-item">
				<div class="label">Passed Out:</div>
				<div class="value">${user.year}</div>
			</div>
			
		</div>
		<div class="profile-footer">
			<a href="logout">Logout</a>
		</div>
	</div>
</body>
</html>
