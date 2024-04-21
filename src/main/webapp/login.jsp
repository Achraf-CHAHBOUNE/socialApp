<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700&display=swap">
    <style>
        /* Reset styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7f6;
        }

        /* Form styles */
        .container {
            max-width: 400px;
            margin: 50px auto;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding: 40px;
        }

        .form-title {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #888;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input:focus {
            outline: none;
            border-color: #57b846;
        }

        .form-button {
            text-align: center;
        }

        .form-submit {
            background-color: #57b846;
            color: #fff;
            border: none;
            padding: 12px 24px;
            font-size: 18px;
            border-radius: 25px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-submit:hover {
            background-color: #4cae3b;
        }

        .social-login {
            text-align: center;
            margin-top: 20px;
        }

        .socials {
            list-style: none;
            padding: 0;
            margin: 15px 0;
        }

        .socials li {
            display: inline-block;
            margin-right: 10px;
        }

        .socials a {
            text-decoration: none;
            color: #333;
            font-size: 24px;
        }

        .signup-image {
            text-align: center;
            margin-top: 20px;
        }

        .signup-image-link {
            color: #333;
            text-decoration: none;
        }

        .signup-image-link:hover {
            color: #57b846;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="form-title">Login</h2>
    <form method="post" action="login" class="register-form" id="login-form">
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" placeholder="Your email" required/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" placeholder="Password" required/>
        </div>
        <div class="form-group">
            <input type="checkbox" name="remember-me" id="remember-me" class="agree-term"/>
            <label for="remember-me">Remember me</label>
        </div>
        <div class="form-group form-button">
            <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
        </div>
    </form>
    <div class="social-login">
        <span class="social-label">Or login with</span>
        <ul class="socials">
            <li><a href="#"><i class="material-icons">facebook</i></a></li>
            <li><a href="#"><i class="material-icons">twitter</i></a></li>
            <li><a href="#"><i class="material-icons">alternate_email</i></a></li>
        </ul>
    </div>
    <div class="signup-image">
        <a href="register" class="signup-image-link">Create an account</a>
    </div>
</div>
</body>
</html>

