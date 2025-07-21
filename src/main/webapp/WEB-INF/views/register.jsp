<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Form</title>
<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    h1 {
        margin-top: 30px;
        color: green;
    }
    .form-container {
        flex: 1;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 400px; /* Increased width */
        min-height: calc(100vh - 80px);
    }
    form {
        background: white;
        padding: 20px 30px;
        border-radius: 30px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        width: 100%; /* Ensure form takes full container width */
    }
    div {
        display: flex;
        flex-direction: column;
        gap: 10px;
    }
    label.main-label {
        font-weight: bold;
        color: blue;
    }
    .checkbox-options {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
        margin-left: 10px;
    }
    .checkbox-options label {
        display: flex;
        align-items: center;
        gap: 5px;
        font-weight: normal;
        color: black;
    }
    input[type="checkbox"] {
        margin: 0;
    }
    input, select {
        padding: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        margin-top: 10px;
        padding: 10px;
        border-radius: 50px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    input[type="submit"]:active {
        color: blue;
        background-color: white;
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
    <h1>Registration Form</h1>

    <div class="form-container">
        <form action="saveuser" method="post">
            <div>
                <label class="main-label">Name</label>
                <input type="text" placeholder="Enter your name" name="name">
                
                <label class="main-label">Email</label>
                <input type="email" placeholder="Enter email" name="email">
                
                <label class="main-label">password</label>
                <input type="password" placeholder="password" name="password">
                
                
                <label class="main-label">Passout-year</label>
                <select name="year">
                    <option value="2025">2025</option>
                    <option value="2024">2024</option>
                    <option value="2023">2023</option>
                    <option value="2022">2022</option>
                </select>

                <label class="main-label">Known languages</label>
                <div class="checkbox-options">
                    <label><input type="checkbox" name="lang" value="Java"> Java</label>
                    <label><input type="checkbox" name="lang" value="Python"> Python</label>
                    <label><input type="checkbox" name="lang" value="SQL"> SQL</label>
                    <label><input type="checkbox" name="lang" value="JavaScript"> JavaScript</label>
                </div>

                <label class="main-label">Job-role</label>
                <select name="job_role">
                    <option value="software developer">Software Developer</option>
                    <option value="web developer">Web Developer</option>
                    <option value="software testing">Software Testing</option>
                    <option value="Data Analyst">Data Analyst</option>
                </select>

                <label class="main-label">Preferable locations</label>
                <div class="radio-options">
                    <label><input type="checkbox" name="locations" value="Hyderabad"> Hyderabad</label>
                    <label><input type="checkbox" name="locations" value="Bangalore"> Bangalore</label>
                    <label><input type="checkbox" name="locations" value="Chennai"> Chennai</label>
                    <label><input type="checkbox" name="locations" value="Pune"> Pune</label>
                </div>


                <input type="submit" value="Register">
                <div class="link">
    <p>Already have an account? <a href="login">Login here</a></p>
</div>

            </div>
        </form>
    </div>
</body>
</html>
