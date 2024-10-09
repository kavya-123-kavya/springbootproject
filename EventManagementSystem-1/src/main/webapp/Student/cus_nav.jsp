<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
 <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
 <style>
   

    .navbar {
        display: flex;
        justify-content: center;
        background-color: transparent;
        padding: 10px 0;
        
    }

    .navbar ul {
        list-style: none;
        display: flex;
        gap: 28px;
    }

    .navbar li {
        position: relative;
        width: 150px;
        height: 72px;
        border-radius: 50%;
        background: transparent;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        box-shadow: 2 2 2 4px #fff;
        transition: 300ms;
    }

    .navbar li:hover {
        width: 160px;
        background: rgba(176, 48, 48, 0.2);
    }

    .navbar li::before {
        content: "";
        position: absolute;
        inset: 0;
        border-radius: 50%;
        background: var(--bg-color);
        opacity: 0;
        transition: 300ms;
    }

    .navbar li:hover::before {
        opacity: 1;
    }

    .navbar li span {
        position: absolute;
    }

    .navbar li i {
        color: #141313;
        font-size: 2.5em;
        transition: 300ms;
        transition-delay: 150ms;
    }

   .navbar ul:hover > li:not(:hover)   {
        opacity: 0.3;
        
    }

    .navbar li:hover i {
        transform: scale(0);
        color: #fff;
        transition-delay: 0s;
    }
    
    .navbar li .text {
        color: #fff;
        font-family: Georgia, 'Times New Roman', Times, serif;
        font-weight: bold;
        font-size: 1rem;
        z-index: 1;
        opacity: 0;
        transition: 300ms;
    }

    .navbar li:hover .text {
        opacity: 1;
    }
    
    /* Logout button styles */
    .logout-button {
        position: absolute;
        top: 15px;
        right: 40px;
        background-color: rgba(0, 0, 0, 0.86);
        border: none;
        padding: 20px 20px;
        color: #fff;
        border-radius: 30px;
        cursor: pointer;
        transition: background-color 0.3s;
        font-weight: bolder;
        font-size: medium;
    }

    .logout-button:hover {
        background-color: rgba(121, 236, 184, 0.5);
    }
 </style>
</head>
<body class="navbody">
    <nav class="navbar">
        <ul>
            <li style="--bg-color: #a9c700;">
                <span class="icon"><i class="material-symbols-outlined">house</i></span>
                <a href="customerhome" class="text">Home</a>
            </li>
            <li style="--bg-color: #E9724C;">
                <span class="icon"><i class="material-symbols-outlined">view_list</i></span>
                <a href="Events.html" class="text">View Notifications</span></a>
            </li>
            
            <li style="--bg-color: #54bcce;">
                <span class="icon"><i class="material-symbols-outlined">contact_support</i></span>
                <a href="customercontact" class="text">Contact</a>
            </li>
            <li style="--bg-color: #0c68a5;">
                <span class="icon"><i class="material-symbols-outlined">person_pin</i></span>
                <a href="cusprofile" class="text">Profile</a>
            </li>
        </ul>
    </nav>
    <form action="login" method="get">
    <!-- Logout Button -->
    <button class="logout-button">Logout</button>
</form>
<br>
<br>
<br>
</body>
</html>
    