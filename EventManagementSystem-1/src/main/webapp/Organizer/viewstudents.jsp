<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            background: #bdc3c7;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #2c3e50, #bdc3c7);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #2c3e50, #bdc3c7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            
        }

        .profile-container {
            max-width: 800px;
            width: 100%;
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            position: relative;
            animation: slideIn 1s forwards;
            transition: background-color 0.3s, transform 0.5s;
        }

        .profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
            transition: transform 0.3s;
        }

        .profile-info {
            flex: 1;
            color: #333;
            transition: color 0.3s;
        }

        .profile-info h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .profile-info p {
            margin: 0;
        }

        .view-button {
            font-size: large;
            text-align: center;
            position: absolute;
            right: 20px;
            top: 40%;
            width: 120px;
            padding: 10px 10px;
            background-color: orange;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }

        .view-button:hover {
            background-color: beige;
            color: orange;
        }

        .profile-container:hover {
            background-color: #f5f5f5;
            transform: translateY(-5px);
        }

        .profile-container:hover .profile-pic {
            transform: scale(1.1);
        }

        .profile-container:hover .profile-info {
            color: #e7ae58;
        }

        @keyframes slideIn {
            to {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
<div>
<%@include file="navbar.jsp" %>
</div>

<c:forEach items="${cusdata}" var="cus">
    <div class="profile-container">
        
        <div class="profile-details">
            <h1>${cus.sid}</h1>
            <ul class="profile-list">
                <li><strong>Date of Birth:</strong> ${cus.dateofbirth}</li>
                <li><strong>Email:</strong> ${cus.email}</li>
                <li><strong>Phone:</strong> ${cus.contact}</li>
            </ul>
            <a href='<c:url value="viewstdbycousellor?id=${cus.id}" ></c:url>' class="view-button">View</a>
        </div>
    </div>
</c:forEach>

<br>
<br>
</body>
</html>
