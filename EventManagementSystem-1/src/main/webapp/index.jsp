<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <style>
        body {
            margin: 0;
            width: 100%;
            font-family: Arial, sans-serif;
            overflow: hidden;
           
            
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
           opacity:1;
            background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            transition: opacity 0.5s;
        }

       
        
        

        .about-event {
            position: absolute; /* Change position to absolute */
            left: 20%; /* Align to the left side of the viewport */
            top: 15%; /* Vertically center the container */
            transform: translateX(5%);
            color: white;
            padding: 20px;
            max-width: 800px;
        }

        .about-event h1 {
            font-size: 1.5rem;
            margin-top: 20px;
            border: 2px solid white;
            padding: 20px;
            opacity: 0.9;
            background-color: rgba(0, 0, 0, 0.5);
            transition: background-color 0.3s, transform 0.2s, opacity 0.3s;
            line-height: 1.6;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            border-radius: 40px;
        }

        .about-event h1:hover {
            background-color: rgba(0, 0, 0, 0.7);
            transform: scale(1.02);
            opacity: 1;
            border: 0;
            padding: 30px;
            background-color: rgba(0, 0, 0, 0.2);
            
        }
       

        .Log-Reg {
        position: absolute; /* Change position to absolute */
        left: 0; /* Align to the left side of the viewport */
        top: 65%; /* Vertically center the container */
        transform: translateX(250%);
        display: flex;
        gap: 50px ;
        max-width: 80%; 
    }

        .Log-Reg a {
            background-color: black;
            border-radius: 100px;
            box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
            color: green;
            cursor: pointer;
            display: inline-block;
            font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
            padding: 10px 25px;
            text-align: center;
            text-decoration: none;
            transition: all 250ms;
            border: 0;
            font-size: 20px;
            user-select: none;
            -webkit-user-select: none;
            touch-action: manipulation;
        }

        .Log-Reg a:hover {
            box-shadow: rgba(44,187,99,.35) 0 -25px 18px -14px inset,rgba(44,187,99,.25) 0 1px 2px,rgba(44,187,99,.25) 0 2px 4px,rgba(44,187,99,.25) 0 4px 8px,rgba(44,187,99,.25) 0 8px 16px,rgba(44,187,99,.25) 0 16px 32px;
            transform: scale(1.5) rotate(-2deg);
        }

        .overlay:hover {
            opacity: 1;
        }

        @media (max-width: 768px) {
        .about-event {
            max-width: 90%;
        }

        .Log-Reg {
            transform: translateZ(30%);
            transform: translateX(10%);
            max-width: 100%; /* Reset max-width for Log-Reg in smaller screens */
        }
    }

    </style>
</head>
<body>
    <div>
       
        <div class="overlay">
            <%@ include file="NavBar1.jsp" %>
            <div class="about-event">
                <h1>
                    An Student Counseling Management  is a software application designed to streamline and simplify the process of planning, organizing, and executing events. It provides tools and features that help event organizers and planners manage various aspects of events, from initial planning to post-event analysis.
                </h1>
            </div>

            <div class="Log-Reg">
                <a href="login">Login</a>
                <a href="register">Register</a>
            </div>
        </div>
    </div>
</body>
</html>
