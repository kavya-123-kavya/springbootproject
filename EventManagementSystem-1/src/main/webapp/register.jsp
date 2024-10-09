<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            overflow: hidden;
             background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }

        .register-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            
        }
        .register-container h1{
            position: absolute;
            transform: translateX(-150%);
            top: 125px;


        }
        .register-form:hover{
            opacity: 1;
        }


        .register-form {
            display: flex;
            width: 80%;
            max-width: 800px;
            border: 2px solid black;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9);
            opacity: 1;
        }

        .input-column {
            flex: 1;
            padding: 20px;
        }

        .input-field {
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            transition: border-color 0.3s;
        }

        .input-field:focus {
            border-color: #007bff;
        }

        .register-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 15px;
        }

        .register-button:hover {
            background-color: #0056b3;
        }

        .login-link {
            margin-top: 10px;
            text-align: center;
        }

        .login-link a {
            color: #007bff;
            text-decoration: none;
        }

        @media (max-width: 768px) {
            .register-form {
                flex-direction: column;
            }
            .register-container h1{
                opacity: 0;
            }
        }
        /* Style for the gender dropdown */
		select[name="gender"] {
		    width: 100%;
		    margin: 10px 0;
		    padding: 10px;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    outline: none;
		    transition: border-color 0.3s;
		    background-color: #fff; /* Background color */
		}
		
		
		select[name="gender"]:focus {
		    border-color: #007bff; /* Border color on focus */
		}
		
		
		select[name="gender"] option {
		    padding: 5px;
		    font-size: 16px;
		    background-color: #fff; /* Background color for options */
		    color: #333; /* Text color for options */
		}
		
		
		select[name="gender"]::-ms-expand {
		    display: none; /* Remove the default arrow in IE */
		}


		select[name="gender"]::after {
		    content: '\25BC'; /* Unicode character for down arrow */
		    position: absolute;
		    top: 50%;
		    right: 10px;
		    transform: translateY(-50%);
		    pointer-events: none;
		}
        
    </style>
</head>
<body>
    
        <%@ include file="NavBar1.jsp" %>
    </div>
    
    <div class="register-container">
    
        <h1>Register</h1>
        <p style="font-size:medium;" >${message}</p>
        <form action="addcustomer" method="post"> 
        <div class="register-form">
            <div class="input-column">
                <input class="input-field" type="text" placeholder="First Name" name="fname" />
                <input class="input-field" type="text" placeholder="Last Name" name="lname" />
                <input class="input-field" type="text" placeholder="Username" name="username" />
                <input class="input-field" type="text" placeholder="Student id" name="id" />
                <input class="input-field" type="password" placeholder="Password" name="password" />
                <input class="input-field" type="email" placeholder="Email" name="email" />
            </div>
            <div class="input-column">
            
            	<select name="gender" required>
				<option value="">---Select---</option>
				<option value="Male">male</option>
				<option value="Female">female</option>
				<option value="OTHERS">Others</option>
				</select>
				                
                <input class="input-field" type="date" placeholder="Dataofbirth" name="dob" />
                <input class="input-field" type="tel" placeholder="Phone Number" name="contact" />
           		
            </div>
            <div class="input-column">
                <input class="input-field" type="text" placeholder="Location" name="location" />
                <input class="input-field" type="text" placeholder="Address" name="address" />
                <input class="input-field" type="text" placeholder="Pincode" name="pincode" />
                <button class="register-button" type="submit">Register</button>
            </div>
        </div>
    </form>
    <div class="login-link">
        Already have an account? <a href="login">Login here</a>
    </div>
    </div>
    </div>

    
</body>
</html>
