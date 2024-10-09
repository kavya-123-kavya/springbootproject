<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Counsellor</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #636363;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #a2ab58, #636363);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #a2ab58, #636363); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            text-align: center;
        }

        .welcome-message {
            font-size: 2rem;
            font-weight: bolder;
            color: #e74c3c; /* Red color */
            margin: 20px 0;
        }

        .user-description {
            font-size: 1.5rem;
            color: #333; /* Dark gray text */
            margin: 20px 0;
        }

        u {
            background: linear-gradient(135deg, #f5778c 0%, #ece651 100%);
            background-clip: text;
            -webkit-background-clip: text;
            font-weight: bolder;
        }
    </style>
</head>
<body>
<div>
    <%@ include file="navbar.jsp" %>
</div>

<div class="container">
    <h1 class="welcome-message">Welcome, <u>${username}</u></h1>
    
    <p class="user-description">
        This is your personalized counseling space. You can provide a brief overview of your services and how you can assist your clients in this section.
    </p>
</div>
</body>
<script>
    function toggleSidebar() {
        const sidebar = document.querySelector('.sidebar');
        const content = document.querySelector('.content');
        const body = document.querySelector(".welcome-section");
        
        sidebar.classList.toggle('active');
        content.classList.toggle('new');
        body.classList.toggle('body-new');
    }
</script>
</html>
