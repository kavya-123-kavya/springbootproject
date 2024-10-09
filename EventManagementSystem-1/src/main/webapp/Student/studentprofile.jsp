<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Professional Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #1f4037;
            color: #fff;
            margin: 0;
            padding: 0;
           
        }

        .container {
	        position: absolute;
	        left:25%;
            width: 700px;
            background: rgba(255, 255, 255, 0.2);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
            padding: 20px;
        }

        h1, h2 {
            text-align: center;
        }

        .info-section {
            display: none;
            text-align: left;
        }

        .info-section.active {
            display: block;
        }

        p {
            padding: 10px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            border-radius: 5px;
            font-size: 18px;
        }

        strong {
            color: #3498db;
        }

        .toggle-buttons {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }

        .toggle-button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            font-size: 18px;
            margin: 0 10px;
            padding: 5px 10px;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .toggle-button.active {
            background-color: #3498db;
            color: #fff;
        }
         #update-button {
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            display: block;
            margin: 20px auto;
        }
    </style>
</head>
<body>
<%@include file="cus_nav.jsp" %>
<div class="container">
    <h1>Professional Profile</h1>
    <div class="toggle-buttons">
        <button class="toggle-button active" id="personal-info-button">Personal Information</button>
        <button class="toggle-button" id="contact-info-button">Contact Information</button>
    </div>
    <div class="info-section active">
        <h2>Personal Information</h2>
        <p><strong>First Name:</strong> ${cus.fname}</p>
        <p><strong>Last Name:</strong> ${cus.lname}</p>
        <p><strong>Username:</strong> ${cus.username}</p>
        <p><strong>Gender:</strong> ${cus.gender}</p>
        <p><strong>Date of Birth:</strong> ${cus.dateofbirth}</p>
    </div>
    <div class="info-section">
        <h2>Contact Information</h2>
        <p><strong>Email:</strong> ${cus.email}</p>
        <p><strong>Phone no:</strong> ${cus.contact}</p>
        <p><strong>Location:</strong> ${cus.location}</p>
        <p><strong>Address:</strong> ${cus.address}</p>
        <p><strong>Pincode:</strong> ${cus.pincode}</p>
    </div>
    <form action="updateprofile" method="get">
    <button id="update-button">Update</button>
    </form>
</div>

<script>
    const infoSections = document.querySelectorAll('.info-section');
    const toggleButtons = document.querySelectorAll('.toggle-button');

    toggleButtons.forEach((button, index) => {
        button.addEventListener('click', () => {
            infoSections.forEach((section) => section.classList.remove('active'));
            infoSections[index].classList.add('active');

            toggleButtons.forEach((btn) => btn.classList.remove('active'));
            button.classList.add('active');
        });
    });
</script>
</body>
</html>
