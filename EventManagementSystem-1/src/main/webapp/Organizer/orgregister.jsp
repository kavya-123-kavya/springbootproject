<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
             background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }

        .container {
            max-width: 600px;
            margin: 10px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            text-align: center;
            transition: transform 0.2s;
        }

        .container:hover {
            transform: scale(1.01);
        }

        h2 {
            color: #fff;
            background: linear-gradient(to right, #953075, #7e447b);
            padding: 10px 0;
            margin: -20px -20px 20px -20px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="date"] {
            width: 45%;
            padding: 10px;
            margin: 5px 5px 10px 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background-color: rgba(255, 255, 255, 0.8);
        }

        select {
            width: 45%;
            padding: 10px;
            margin: 0px 5px 10px 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background-color: rgba(255, 255, 255, 0.8);
        }

        input[type="submit"] {
            background-color: black;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        input[type="submit"]:hover {
            background-color: black;
        }

        .field-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .location-select {
            text-align: left;
        }

        .message {
            color: #161719;
        }
        .request-account {
            margin-top: 15px;
        }
    </style>
</head>
<body>
	
    <div class="container">
        <h2>Register</h2>
        <form action="addorganizer" method="post">
            <div class="field-row">
                <label for="fname">First Name :</label>
                <input type="text" id="fname" name="fname" required>
            </div>

            <div class="field-row">
                <label for="lname">Last Name :</label>
                <input type="text" id="lname" name="lname" required>
            </div>

            <div class="field-row">
                <label for="username">Username :</label>
                <input type="text" id="username" name="username" required>
            </div>

			<div class="field-row">
                <label for="fname">ID :</label>
                <input type="text" id="id" name="id" required>
            </div>
            
            <div class="field-row">
                <label for="gender">Gender :</label>
                <select id="gender" name="gender" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="field-row">
                <label for="dateofbirth">Date of Birth :</label>
                <input type="date" id="dateofbirth" name="dob" required>
            </div>

            <div class="field-row">
                <label for="email">Email :</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="field-row">
                <label for="password">Password :</label>
                <input type="password" id="password" name="password" required>
            </div>

            <div class="field-row">
                <label for="location">Location :</label>
                <input type="text" id="location" name="location" required>
            </div>

            <div class="field-row">
                <label for="pincode">Pincode :</label>
                <input type="text" id="pincode" name="pincode" required>
            </div>

            <div class="field-row">
                <label for="address">Address :</label>
                <input type="text" id="address" name="address" required>
            </div>

            <div class="field-row">
                <label for="contact">Contact :</label>
                <input type="text" id="contact" name="contact" required>
            </div>

            <input type="submit" value="Request">
            
            
        </form>
        <div class="request-account">
            <p>Already have an account? <a href="orglogin">Login</a></p>
        </div>
    </div>
</body>
</html>
    