<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
    <title>Task Management App - Sign Up</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #3498db; /* Background color */
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .signup-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            max-width: 400px; /* Reduced width */
            width: 100%;
            text-align: left;
            display: flex;
        }

        .signup-form {
            flex: 1;
            padding: 20px;
        }

        .signup-image {
            flex: 1;
            background: url('task-management-image.jpg') center center;
            background-size: cover;
        }

        h1 {
            color: #333;
            font-size: 32px;
            margin-top: 0;
        }

        label {
            display: block;
            color: #333;
            font-size: 18px;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background: #e74c3c; /* Button background color */
            color: #fff;
            padding: 12px 20px;
            border: 0;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            transition: background 0.3s;
        }

        input[type="submit"]:hover {
            background: #c0392b; /* Button background color on hover */
        }

        input[type="submit"]:focus {
            outline: none;
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <div class="signup-form">
            <h1>Sign Up</h1>
            <form action="/signup" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>

                <label for="fullname">Full Name:</label>
                <input type="text" id="fullname" name="fullname" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>

                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>

                <input type="submit" value="Sign Up">
            </form>
        </div>
        
    </div>
</body>
</html>
    