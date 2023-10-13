<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #3498db; /* Background color */
        }

        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 20px;
            
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .sign-in-button {
            width: 100%;
            background: #e74c3c; /* Button background color */
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>
<body>
	<div class="container">
        <h2>Sign In</h2>
        <form action="/signin" method="post" modelAttribute="command">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required style="width: 300px; ">
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required style="width: 300px; ">
            </div>
           	
           <img src="data:real/jpg;base64, ${command.realCaptcha}" /><br/><br/>
    <div class="form-group">
        <form:label path="captcha">Captcha:</form:label>
        <input type="text" id="captcha" name="captchaInput" required style="width: 150px;"> 
    </div>
    <div class="form-group">
        <form:hidden path="hiddenCaptcha" />
    </div>
     
			<br/>
			
			Dont have an account? <a href="signup">SignUp</a>
			<br/>
			
            <button type="submit" class="sign-in-button">Sign In</button>
        </form>
    </div>
</body>
</html>