
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>  
    
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: transparent;
            color: #fff;
            position: fixed;
            top: 0;
            left: -250px;
            transition: left 0.3s;
        }

        .content {
            margin-left: 0%;
            width: calc(50% - 250px);
            transition: margin-left 0.3s;
        }

        .active {
            left: 0;
        }

        .brand {
            font-size: 1.5rem;
            padding: 20px;
            text-align: center;
        }

        .sidebar-nav ul {
            list-style: none;
            padding: 0;
        }

        .sidebar-nav ul li {
            padding: 10px 20px;
            border-bottom: 1px solid #555;
            transition: background-color 0.3s, transform 0.3s;
            transform-origin: left center;
        }

        .sidebar-nav ul li:hover {
            background-color: #555;
            transform: scale(1.05);
        }

        .sidebar-nav ul li a {
            color: #fff;
            text-decoration: none;
            display: block;
            transition: color 0.3s;
        }

        .sidebar-nav ul li:hover a {
            color: #ffd700; /* Change the color on hover */
        }

        .toggle-button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .toggle-button:hover {
            background-color: #555;
        }

        .new {
            margin-left: 17%;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="brand">
           	Counsellor
        </div>
        <nav class="sidebar-nav">
            <ul>
                <li><a href="orghome">Home</a></li>
               
                <li><a href="cousellorviewcustomer">View Students</a></li>
               
                <li><a href="cousellorprofile">Profile</a></li>
                <li><a href="orglogin">Logout</a></li>
            </ul>
        </nav>
    </div>

    <div class="content">
        <button class="toggle-button" onclick="toggleSidebar()">Click</button>
    </div>

    <script>
        function toggleSidebar() {
        const sidebar = document.querySelector('.sidebar');
        const content = document.querySelector('.content');
        const body =document.querySelector(".welcome-section");
        
        sidebar.classList.toggle('active');
        content.classList.toggle('new');
        body.classList.toggle('body-new');
        
    }
    </script>
</body>
</html>
