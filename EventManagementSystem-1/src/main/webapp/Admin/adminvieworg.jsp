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
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        .profile-container {
            max-width: 800px;
            margin: 20px auto; /* Added margin to create gaps */
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: flex;
            align-items: center;
            justify-content: space-between; /* To place the "View" button on the right */
            position: relative; /* Required for the button positioning */
            transform: translateX(100%); /* Initially hidden off the right side */
            animation: slideIn 1s forwards; /* Slide in animation */
            transition: background-color 0.3s, transform 0.5s; /* Transition for hover effect */
        }

        .profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 20px;
            transition: transform 0.3s; /* Transition for hover effect */
        }

        .profile-info {
            flex: 1; /* Take remaining space in the container */
            color: #333; /* Text color for profile-info */
            transition: color 0.3s; /* Transition for text color on hover */
        }

        .profile-info h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .profile-info p {
            margin: 0;
        }

        /* Add styles for the "View" button */
        .view-button {
            font-size: large;
            text-align:center;
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
            transition: background-color 0.3s, color 0.3s; /* Transition for hover effect */
        }

        .view-button:hover {
            background-color: beige; /* Change button color on hover */
            color: orange;
        }

        /* Hover effect for profile-container */
        .profile-container:hover {
            background-color: #f5f5f5; /* Change the background color on hover */
            transform: translateX(0); /* Slide in to the final position on hover */
        }

        /* Hover effect for profile-pic */
        .profile-container:hover .profile-pic {
            transform: scale(1.1); /* Zoom in the profile pic on hover */
        }

        /* Hover effect for profile-info */
        .profile-container:hover .profile-info {
            color: #e7ae58; /* Change text color on hover */
        }

        /* Keyframes for slide-in animation */
        @keyframes slideIn {
            to {
                transform: translateX(0); /* Slide in to the final position */
            }
        }
    </style>
</head>
<body>
<body>
<div>
    <%@include file="adminnavbar.jsp" %>
</div>

<h2 style="font-weight: bolder; color: green;">Active</h2>
<c:forEach items="${cusdata}" var="activeCus">
    <c:if test="${activeCus.active}">
        <div class="profile-container">
            <div class="profile-pic">
                <img src="profile-pic.jpg" alt="Profile Picture">
            </div>
            <div class="profile-info">
                <h1>${activeCus.username}</h1>
                <p>Date of Birth: ${activeCus.dateofbirth}</p>
                <p>Email: ${activeCus.email}</p>
                <p>Phone: ${activeCus.contact}</p>
                <br>
                <p style="color: green">ACTIVE</p>
            </div>
            <a href='<c:url value="vieworg?id=${activeCus.id}" ></c:url>' class="view-button">View</a>
        </div>
    </c:if>
</c:forEach>

<h2 style="font-weight: bolder; color: red;">Not Active</h2>
<c:forEach items="${cusdata}" var="inactiveCus">
    <c:if test="${!inactiveCus.active}">
        <div class="profile-container">
            <div class="profile-pic">
                <img src="profile-pic.jpg" alt="Profile Picture">
            </div>
            <div class="profile-info">
                <h1>${inactiveCus.username}</h1>
                <p>Date of Birth: ${inactiveCus.dateofbirth}</p>
                <p>Email: ${inactiveCus.email}</p>
                <p>Phone: ${inactiveCus.contact}</p>
                <br>
                <p style="color: red; font-weight: bolder;">INACTIVE</p>
            </div>
            <a href='<c:url value="vieworg?id=${inactiveCus.id}" ></c:url>' class="view-button">View</a>
        </div>
    </c:if>
</c:forEach>

<br>
<br>
</body>

</html>
