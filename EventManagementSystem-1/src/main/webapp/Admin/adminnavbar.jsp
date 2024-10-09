

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <style>
        body{
        margin:0;
        padding:0;
        }
        
        .navbar {
            background-color: black;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 20px 40px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s, color 0.3s;
        }

        .navbar a:hover {
            background-color: beige;
            color: black;
            font-weight: bolder;
        }

        .active {
            background-color: black;
        }

        .home-content {
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 50px;
            flex-wrap: wrap;
        }

        .info-box {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 30%;
            text-align: center;
            transition: transform 0.3s, box-shadow 0.3s;
            animation: fadeIn 0.5s ease-in-out;
            margin: 10px;
        }

        .info-box:hover {
            transform: translateY(-5px);
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.2);
        }

        @keyframes fadeIn {
            0% {
                transform: translateY(50px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .info-box h2 {
            margin-top: 0;
            color: #333;
        }

        .info-box p {
            color: #666;
            font-size: 1.2rem;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a class="active" href="adminhome">Home</a>
        <a href="#content">Content</a>
        <a href="adminvieworganizers">View Counsellor</a>
        <a href="adminviewcustomer">View Student</a>
        
        <a href="adminlogin">Logout</a>
    </div>
</body>
</html>

    