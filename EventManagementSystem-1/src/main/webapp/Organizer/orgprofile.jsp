<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            padding: 20px;
            background: #bdc3c7;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #2c3e50, #bdc3c7);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #2c3e50, #bdc3c7); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            
        }

        .profile-container {
            background-color: transparent;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
            width: 80%;
            margin: 0 auto;
            position: fixed;
            left:15%;
        }

        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-header h1 {
            font-size: 28px;
            font-weight: bold;
            color: #333;
        }

        .profile-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            grid-gap: 20px;
        }

        .profile-item {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            background-color: #fff;
            transition: background-color 0.3s, color 0.3s;
        }

        .profile-item:hover {
            background-color: lightblue;
            color: #fff;
        }

        .profile-item h2 {
            font-size: 18px;
            color: #007bff;
        }

        .profile-item p {
            font-size: 18px;
            font-weight: bolder;
            font-size:x-large;
            color: #555;
        }

        .profile-item .active {
            color: #0f0;
        }
    </style>
</head>
<body>
<div>
    <%@ include file="navbar.jsp" %>
</div>
    <div class="profile-container">
        <div class="profile-header">
            <h1>Counselor Profile</h1>
        </div>
        <div class="profile-details">
            <div class="profile-item">
                <h2>First Name</h2>
                <p>${cusdata.fname}</p>
            </div>
            <div class="profile-item">
                <h2>Last Name</h2>
                <p>${cusdata.lname}</p>
            </div>
            <div class="profile-item">
                <h2>Username</h2>
                <p>${cusdata.username}</p>
            </div>
            <div class="profile-item">
                <h2>Counselor ID</h2>
                <p>${cusdata.cid}</p>
            </div>
            <div class="profile-item">
                <h2>Gender</h2>
                <p>${cusdata.gender}</p>
            </div>
            <div class="profile-item">
                <h2>Date of Birth</h2>
                <p>${cusdata.dateofbirth}</p>
            </div>
            <div class="profile-item">
                <h2>Email</h2>
                <p>${cusdata.email}</p>
            </div>
            
            <div class="profile-item">
                <h2>Location</h2>
                <p>${cusdata.location}</p>
            </div>
            <div class="profile-item">
                <h2>Pincode</h2>
                <p>${cusdata.pincode}</p>
            </div>
            <div class="profile-item">
                <h2>Address</h2>
                <p>${cusdata.address}</p>
            </div>
            <div class="profile-item">
                <h2>Contact</h2>
                <p>${cusdata.contact}</p>
            </div>
            <div class="profile-item">
                <h2>Active</h2>
                <p class="active">Yes</p>
            </div>
        </div>
    </div>
</body>
</html>
