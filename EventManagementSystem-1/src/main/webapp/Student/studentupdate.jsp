<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            
        }
		.body2
		{
            background-color: #f2f2f2;
		    display: flex;
            justify-content: center;
            align-items: center;
            min-height: auto;
		}
		
        .profile-container {
       
            max-width: 1300px;
            width: 100%;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            transition: background-color 0.3s;
        }

        .profile-container:hover {
            background-color: #f8f8f8;
        }

        .profile-container h1 {
            text-align: center;
            color: #333;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .profile-form {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            gap: 20px; /* Increased gap between input-columns */
        }

        .input-column {
            flex: 1;
            margin: 10px;
            animation-duration: 1s;
            animation-timing-function: ease;
            animation-fill-mode: forwards;
            opacity: 0;
            transform: translateX(-50px);
        }

        .input-column:nth-child(odd) {
            animation-name: slideInLeft;
        }

        .input-column:nth-child(2) {
            animation-name: slideInUp;
        }

        .input-column:nth-child(even) {
            animation-name: slideInRight;
        }

        @keyframes slideInLeft {
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes slideInUp {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideInRight {
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        .input-field {
            width: 90%;
            padding: 15px;
            margin-bottom: 20px;
            border: none;
            background-color: #f5f5f5;
            border-radius: 5px;
            outline: none;
            transition: background-color 0.3s, box-shadow 0.3s, border-color 0.3s; /* Added border-color transition */
            color: #333;
            font-size: 1rem;
        }

        .input-field:focus {
            background-color: #e0e0e0;
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.1);
            border-color: #007bff; /* Change border color on focus */
        }

        select {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: none;
            background-color: #f5f5f5;
            border-radius: 5px;
            outline: none;
            transition: background-color 0.3s, box-shadow 0.3s, border-color 0.3s; /* Added border-color transition */
            color: #333;
            font-size: 1rem;
        }

        select:focus {
            background-color: #e0e0e0;
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.1);
            border-color: #007bff; /* Change border color on focus */
        }

        .register-button {
            background-color: #007bff;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-size: 1.2rem;
            width: 100%;
        }

        .register-button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .input-column {
                flex: 100%;
            }
        }
    </style>
</head>
<body>
<div>
    <%@ include file="cus_nav.jsp" %>
</div>
<div>
<h2>${msg}</h2>
</div>
<div class="body2">
    <div class="profile-container">
        <h1>User Profile</h1>
        <form action="update" method="post">
            <div class="profile-form">
                <div class="input-column">
                    <input class="input-field" type="text" placeholder="First Name" name="fname" value="${cus.fname}" required />
                    <input class="input-field" type="text" placeholder="Last Name" name="lname" value="${cus.lname}" required />
                    <input class="input-field" type="text" placeholder="Username" name="username" value="${cus.username}" required />
                    <input class="input-field" type="email" placeholder="Email" name="email" value="${cus.email}" required />
                </div>
                <div class="input-column">
                    <select name="gender" required>
                        <option value="${cus.gender}" selected>${cus.gender}</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Other">Other</option>
                    </select>
                    <input class="input-field" type="date" placeholder="Date of Birth" name="dob" value="${cus.dateofbirth}" required />
                    <input class="input-field" type="tel" placeholder="Phone Number" name="contact" value="${cus.contact}" required />
                </div>
                <div class="input-column">
                    <input class="input-field" type="text" placeholder="Location" name="location" value="${cus.location}" required />
                    <input class="input-field" type="text" placeholder="Address" name="address" value="${cus.address}" required />
                    <input class="input-field" type="text" placeholder="Pincode" name="pincode" value="${cus.pincode}" required />
                    <button class="register-button" type="submit">Update Profile</button>
                </div>
            </div>
        </form>
    </div>
    </div>
</body>
</html>
    