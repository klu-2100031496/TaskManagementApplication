<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Management System</title>
   <style>
        /* Basic styles for the page */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        /* Navigation bar styles */
        .navbar {
            background-color: #3498db;
            overflow: hidden;
        }

        .navbar a {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a.title {
            display: inline-block;
            float: left; /* Keep the title on the left */
        }

        .navbar a.signin, .navbar a.signup {
            display: inline-block;
            float: right; /* Move "Sign In" and "Sign Up" to the right */
            background-color: #e74c3c; /* Preserve the orange color */
            color: #fff;
            text-decoration: none;
            padding: 12px 24px;
            border-radius: 5px;
            font-weight: bold;
            margin: 10px;
        }

        .navbar a:hover {
            background-color: #2980b9;
        }

        /* Page content styles */
        .content {
            padding: 20px;
            text-align: center;
        }

        /* Title styles */
        .title {
            font-size: 36px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Popup styles */
        .popup {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 1;
            text-align: center;
        }

        .popup-content1 {
            background-color: #fff;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            position: relative;
            top: 50%;
            transform: translateY(-50%);
        }

        .close {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            color: #555;
        }

        /* Styles from signup.jsp */
        .signup-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input {
            width: 90%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .sign-in-button {
            width: 100%;
            background: #e74c3c;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
    
    <script>
    function showPopup(popupId) {
        document.getElementById(popupId).style.display = "block";
    }

    function closePopup(popupId) {
        document.getElementById(popupId).style.display = "none";
    }

    function showSignupPopupFromSigninPopup() {
        // Close the sign-in popup and then show the sign-up popup
        closePopup('signin-popup');
        showPopup('signup-popup');
    }
</script>
    
    
</head>
<body>
    <div class="navbar">
        <a href="/" class="title">Task Management System</a>
        <a href="javascript:void(0);" onclick="showPopup('signup-popup')" class="signup">Sign Up</a>
        <a href="javascript:void(0);" onclick="showPopup('signin-popup')" class="signin">Sign In</a>
    </div>
    
      <div id="signup-popup" class="popup">
        <div class="popup-content1">
            <span class="close" onclick="closePopup('signup-popup')">&times;</span>
            <!-- Include the content of signup.jsp here -->
            <!-- For example, include a form if your signup.jsp contains a form -->
             
            <h1>Sign Up</h1>
            <form action="/signup" method="post">
                    <!-- Your signup form fields go here -->
                    <div class="form-group">
                        <label for="username">Username:</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="fullname">Full Name:</label>
                        <input type="text" id="fullname" name="fullname" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <input type="submit" value="Sign Up" class="sign-in-button">
                </form>
        </div>
        </div>
   

    <!-- Sign In Popup -->
    <div id="signin-popup" class="popup">
        <div class="popup-content1">
            <span class="close" onclick="closePopup('signin-popup')">&times;</span>
            <h2>Sign In</h2>
             <form action="/signin" method="post" modelAttribute="command">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required style="width: 300px;">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required style="width: 300px;">
                </div>
                <!-- Include the captcha code and other fields as needed -->
                <br />
                Don't have an account? <a href="javascript:void(0);" onclick="showSignupPopupFromSigninPopup()">Sign Up</a>
                
                <br />
                <button type="submit" class="sign-in-button">Sign In</button>
            </form>
        </div>
    </div>

    
</body>
</html>
