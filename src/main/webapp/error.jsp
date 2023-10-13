<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
<head>
    <title>Error</title>
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

        .error-message {
            color: #e74c3c; /* Red color for error messages */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Error</h2>
        <div class="error-message">
            <p>${error}</p>
        </div>
    </div>
</body>
</html>
    