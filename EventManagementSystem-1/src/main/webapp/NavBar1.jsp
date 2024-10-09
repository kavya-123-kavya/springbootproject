

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            border-bottom: 1px solid #ddd;
            background-color: transparent; 
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: black;
            padding: 10px;
            transition: color 0.3s ease, transform 0.2s ease;
            font-weight: bold;
        }

        .navbar a:hover {
            color: #007bff;
            transform: scale(1.1); 
        }

        .navbar-logo {
            font-size: 24px;
            font-weight: bold;
            color: white;
        }

        .navbar-links {
            display: flex; 
            align-items: center; 
        }

        .navbar-links a {
            margin-right: 20px;
        }
    </style>
</head>
<body class="navbody">
    <div class="navbar">
        <div class="navbar-logo">My Logo</div>
        <div class="navbar-links">
            <a href="/">Home</a>
            <a href="about">About</a>
            <a href="contact">Contact</a>
            <a href="orglogin">Counsellor Login</a>
            <a href="#">Notifications</a>
            
        </div>
    </div>
</body>
</html>
