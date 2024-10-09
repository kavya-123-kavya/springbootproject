<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            overflow: hidden;
              background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }

        .in  {
            height: 300px;
            width: 400px;
            border: 2px solid black;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            opacity: 1;
            
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            padding: 20px;
            opacity: 1;
              background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }

        .in:hover {
            opacity: 1;
        }

        .input-field  {
            width: 80%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
        }

        .input-field:focus {
            border-color: #007bff;
        }

        .submit-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .submit-button:hover {
            background-color: #0056b3;
        }

        .register-link {
            margin-top: 10px;
            font-size: 0.8rem;
        }

        .register-link a {
            color: #007bff;
            text-decoration: none;
        }

        @media (max-width: 50%) {
            .in {
                width: 50%;
            }
        }
    .notification {
    opacity: 0;
        position: fixed;
        width:150px;
        top: -50px;
        right: 0px;
        background-color: #b82d2d;
        color: white;
        padding: 10px 20px;
        border-radius: 15px;
		animation: blinkNotification 1s infinite alternate; /* Blinking effect */
    }

    /* Add a class to make it visible */
    .show-notification {
        opacity: 1;
    }

    /* Keyframes animation for blinking effect */
    @keyframes blinkNotification {
        0% {
            opacity: 0.4;
        }
        100% {
            opacity: 1;
        }
    }
        
    </style>
</head>

<body>
	
	<div>
        <%@ include file="NavBar1.jsp" %>
    </div>
    
    <div class="in">
    	<%
            String message = (String) request.getAttribute("message"); // Access message from the model
            boolean showMessage = message != null && !message.isEmpty();
        %>
        <% if (showMessage) { %>
        <div class="notification show-notification" id="notification">
            ${message}
        </div>
        <% } %>
        <form action="checkcuslogin" method="post">
        <h1>LOGIN</h1>
        <input class="input-field" type="text" placeholder="Student id" name="id" />
        <br>
        <input class="input-field" type="password" placeholder="Password" name="password" />
        <br>
        <button class="submit-button">Submit</button>
        </form>
        <div class="register-link">
            Don't have an account? <a href="register">Register</a>
        </div>
    </div>
</div>
<script>
    const notification = document.getElementById('notification');
    setTimeout(() => {
        notification.classList.remove('show-notification');
    }, 700);
</script>
</body>
</html>
