<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .login-container {
            max-width: 400px;
            width: 100%;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            text-align: center;
        }

        .login-container h1 {
            text-align: center;
            color: #eaaf3a;
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .input-field {
            width: 90%;
            padding: 15px;
            margin-bottom: 20px;
            border: none;
            background-color: #f5f5f5;
            border-radius: 5px;
            outline: none;
            transition: background-color 0.3s, box-shadow 0.3s, border-color 0.3s;
            color: #333;
            font-size: 1rem;
        }

        .input-field input{
            height: 30px;
            width: 85%;
        }

        .input-field:focus {
            background-color: #e0e0e0;
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.1);
            
        }

        .password-container {
            position: relative;
        }

       

        .password-toggle {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
        }

        .password-toggle:hover {
            filter: brightness(0.8);
        }

        button[type="submit"] {
            background-color: #52e090;
            color: white;
            border: none;
            padding: 10px 25px;
            font-size: 1.2rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #44caeb;
        }
        .monkey-container{
            height: 60px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .monkey {
            max-width: 150px; /* Decreased width */
        }
        h2{
        	color: red;
        	animation: blink 1s steps(1, end) infinite;
        	}
        	@keyframes blink {
			  0% {
			    opacity: 1;
			  }
			  25% {
			    opacity: 0.5;
			  }
			  50%{
			  opacity:0;
			  }
			  75%{
			  opacity:0.5
			  }
			  100% {
			    opacity: 1;
			  }
			}
    </style>
</head>
<body>
    <div class="login-container">
    <h2>${message}</h2>
        <h1>Admin Login</h1>
        <form action="adminlogincheck" method="post">
            <div class="input-field">
                <input type="text" placeholder="Username" name="username" required>
            </div>
            <div class="input-field password-container">
                <input class="password-input" type="password" placeholder="Password" name="password" id="password" required>
                <img class="password-toggle" src="../photos/eye-closed.png" alt="Toggle Password" id="togglePassword">
            </div>
            <button type="submit">Login</button>
        </form>
    </div>

    <script>
        const passwordInput = document.getElementById('password');
        const passwordToggle = document.getElementById('togglePassword');
        const monkey = document.querySelector('.monkey');
    
        passwordToggle.addEventListener('click', () => {
            if (passwordInput.type === 'password') {
                passwordInput.type = 'text';
                passwordToggle.src = '../photos/eye-open.png'; // Replace with your open eye icon
                monkey.src = '../photos/monkey-eye-opened.png';
            } else {
                passwordInput.type = 'password';
                passwordToggle.src = '../photos/eye-closed.png'; // Replace with your closed eye icon
                monkey.src = '../photos/monkey-eye-closeed.png';
            }
        });
    </script>
    
</body>
</html>
    