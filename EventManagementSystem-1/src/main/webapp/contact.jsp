<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    
    <title>Contact</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
        }

        h1 {
            text-align: center;
            margin-top: 7%;
            color: #333;
        }

        u {
            color: coral;
        }

        .contact-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 40px auto;
            max-width: 1000px;
        }

        .contact-section {
            display: flex;
            align-items: center;
            margin: 15px;
            padding: 15px;
            background-color: white;
            border-radius: 5px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            transition: transform 0.2s;
            width: 500px;
        }

        .contact-section:hover {
            transform: translateX(5px);
            transform: scale(1.5);
        }

        .contact-icon {
            margin-right: 10px;
        }

        .contact-details {
            display: none;
            flex-direction: column;
            width: 70%;
        }

        .contact-section:hover .contact-details {
            display: flex;
        }

        .contact-details label {
            font-weight: bold;
            color: #555;
            margin-bottom: 5px;
        }

        .contact-details input,
        .contact-details textarea {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            outline: none;
            margin-bottom: 10px;
            width: 100%;
        }

        .contact-details input:focus,
        .contact-details textarea:focus {
            border-color: #007bff;
        }

        .submit-button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
        }

        .submit-button:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        img {
            width: 50%;
            height: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0 auto;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div>
    <%@ include file="NavBar1.jsp" %>
    </div>
    <h1>Contact<u>Us</u></h1>
    <form action="">
    <div class="contact-form">
        <img src="photos/output-onlinegiftools (1).gif" alt="Hello Image">
        <div class="contact-section">
            <div class="contact-icon">📧 : &nbsp;</div>
            &nbsp;&nbsp;
            <div class="contact-details">
                <label for="gmail">Gmail:</label>
                <input type="email" id="gmail" name="gmail" placeholder="Enter Gmail">
            </div>
        </div>
        <div class="contact-section">
            <div class="contact-icon">📞 : &nbsp;</div>
            &nbsp;&nbsp;
            <div class="contact-details">
                <label for="phone">Phone Number:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter Phone Number">
            </div>
        </div>
        <div class="contact-section">
            <div class="contact-icon">✉️ : &nbsp;</div> 
            <div class="contact-details">
                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="7" placeholder="Enter Message"></textarea>
            </div>
        </div>
        <button class="submit-button">Submit</button>
    </div>
    </form>
    
</body>
</html>
