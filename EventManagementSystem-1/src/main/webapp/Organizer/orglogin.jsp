<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
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
            margin: 80px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            transition: transform 0.2s;
        }

        .container:hover {
            transform: scale(1.01);
        }

        h2 {
            color: #fff;
            background: black;
            padding: 10px 0;
            margin: -20px -20px 20px -20px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input[type="text"], input[type="password"], input[type="submit"] {
            width: 45%;
            padding: 10px;
            margin: 5px 5px 10px 5px;
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

        .message {
            color: #161719;
        }

        .request-account {
            margin-top: 15px;
        }
        
        .account-status {
            margin-top: 30px;
        }
        h3{
        font-size:x-large;
        margin-top: 20px;
        margin-left: 10px;
        background-color: transparent;
        }
        marquee {
        position: relative;
        
        left: 0%; /* Set the left offset */
    	}
    </style>
</head>
<body>
<%@ include file="../NavBar1.jsp" %>
	
    
    <div class="container">
    <marquee behavior="alternate" direction="right">
    <h3  style="color: red">${message}</h3>
    </marquee>
        <h2>Login</h2>
        <form action="checkorganizerlogin" method="post">
            <div class="field-row">
                <label for="username">ID :</label>
                <input type="text" id="username" name="id" required>
            </div>

            <div class="field-row">
                <label for="password">Password :</label>
                <input type="password" id="password" name="password" required>
            </div>

            <input type="submit" value="Login">
        </form>
        <div class="request-account">
            <p>Don't have an account? <a href="orgregistration">Request an account</a></p>
        </div>
    </div>




    <div class="container account-status">
        <h2>Account Status</h2>
        <form action="checkorgstatus" method="post">
            <div class="field-row">
                <label for="Cousellor">Enter ID :</label>
                <input type="text" id="id" name="id" required>
            </div>

            <input type="submit" value="Check Status">
        </form>
    
    <marquee behavior="alternate" direction="right" >
     <%
    String active = (String) request.getAttribute("active");
    if(active == "Pending")
    {
    	%> <h3>${msg} <b style="color: orange"> ${active}<b></h3> 
    	<%
    }
    else
    { 
    	%>
    	<h3>${msg}<b style="color: green"> ${active}<b></h3> 
    	<% 
    }
    %>
    </marquee>
    </div>
</body>
</html>

    