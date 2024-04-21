<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            background-color: #fff;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
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

        .form-group .material-icons {
            position: absolute;
            left: 10px;
            top: 40%;
            transform: translateY(-50%);
            color: #888;
        }

        .form-group .label-agree-term {
            color: #888;
        }

        .form-group .label-agree-term a {
            color: #333;
            text-decoration: none;
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
    <h2 class="form-title">Sign up</h2>
    <form method="post" action="register" class="register-form" id="register-form">
        <div class="form-group">
            <input type="text" name="fname" id="fname" placeholder="First Name" />
        </div>
        <div class="form-group">
            <input type="text" name="lname" id="lname" placeholder="Last Name" />
        </div>
        <div class="form-group">
            <input type="text" name="uname" id="uname" placeholder="Username" />
        </div>
        <div class="form-group">
            <input type="email" name="email" id="email" placeholder="Your Email" />
        </div>
        <div class="form-group">
            <input type="password" name="pass" id="pass" placeholder="Password" />
        </div>

        <div class="form-group form-button">
            <input type="submit" name="signup" id="signup" class="form-submit" value="Register" />
        </div>
    </form>
    <div class="signup-image">
        <a href="login" class="signup-image-link">I am already a member</a>
    </div>
</div>

</body>
</html>
