<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Reset default margin and padding for all elements */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Global styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        /* Profile container styling */
        .profile-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative;
            transition: background-color 0.3s, transform 0.5s;
        }

        /* Profile picture styling */
        .profile-pic {
            width: 150px;
            height: 250px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
            transition: transform 0.3s;
        }
        
        .profile-pic img{
        position:absolute;
        left:35%;
        align-items:center;
        border-radius: 50%;
        width: 250px;
        height: 250px;
        }
        

        /* Profile info styling */
        .profile-info {
            color: #333;
            transition: color 0.3s;
        }

        .profile-info h1 {
            font-size: 38px;
            margin-bottom: 20px;
        }

        /* Updated styling for <p> elements */
        .profile-info p {
            margin: 10px 0;
            font-size: 16px;
            line-height: 1.4;
            padding: 8px 16px;
            border: 2px solid #e7ae58;
            border-radius: 10px;
            display: inline-block;
            background-color: #fff;
            transition: all 0.3s;
        }

        /* Hover effect for <p> elements */
        .profile-info p:hover {
            background-color: #e7ae58;
            color: #fff;
        }

        /* Keyframes for slide-in animation */
        @keyframes slideIn {
            to {
                transform: translateX(0);
            }
        }
    </style>
</head>
<body>
<div>
    <%@include file="adminnavbar.jsp" %>
</div>

<div class="profile-container">
    <div class="profile-pic">
        <img src="/photos/1.jpg" alt="Profile Picture">
    </div>
    <div class="profile-info">
        <h1>${cus.username}</h1>
        <p>First Name: ${cus.fname}</p>
        <p>Last Name: ${cus.lname}</p>
        <p>Email: ${cus.email}</p>
        <p>Gender: ${cus.gender}</p>
        <p>Date of Birth: ${cus.dateofbirth}</p>
        <p>Phone: ${cus.contact}</p>
        <p>Location: ${cus.location}</p>
        <p>Address: ${cus.address}</p>
        <p>Pincode: ${cus.pincode}</p>
        <p>Status: <b>${cus.active}<b></p>
    </div>
    <a href='<c:url value="setstatus?id=${cus.id}&status=true"></c:url>'>Active</a>
	<a href='<c:url value="setstatus?id=${cus.id}&status=false"></c:url>'>Inactive</a>
</div>
<br>
<br>
</body>
</html>
