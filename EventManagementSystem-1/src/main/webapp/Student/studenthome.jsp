<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
	    
        body {
            margin: 0;
            position: relative;
            background: #1f4037;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #99f2c8, #1f4037);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #99f2c8, #1f4037); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            
        }

        img {
            width: 100vw;
            height: 100vh;
            object-fit: cover;
            z-index: 1;
        }

        
        .welcome-section {
            padding: 20px;
            background: transparent;
            max-width: 80%;
            animation: slideUp 1s ease-in-out;
        }

        @keyframes slideUp {
            0% {
                transform: translateY(100%);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .welcome-message {
            position: absolute;
            font-size: 1.5rem;   
            font-size: xx-large ;
            left: 3%;
            top: 100%;
        }

        .user-description {
            position: absolute;
            top: 150%;  
            font-size: xx-large ;
            left: 5%;
            font-size: 1.5rem;
            animation: fadeIn 1.5s ease-in;
            
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(60px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        u{
            background: linear-gradient(135deg, #f5778c 0%, #ece651 100%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            font-weight: bolder;
        }
        .user-description p:hover {
            transform: scale(1.09);
            max-width: 90%;
        }
        .user-description:hover > p:not(:hover) {
            opacity: 0.4;
        }
    </style>
</head>
<body>
    <div id="NavBar">
        <%@ include file="cus_nav.jsp" %>
    </div>
    <div class="welcome-section">
        <p class="welcome-message">Welcome, <u>${username}</u></p>
        <br>
        <div class="user-description">            
           
            <p>&#8362; &nbsp; Manage your profile in the "Profile" section. Update your personal information, profile picture, and preferences to tailor your event experience.</p>
        </div>
    </div>
</body>
</html>
    