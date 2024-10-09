<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background: #1f4037; /* Fallback for old browsers */
            background: -webkit-linear-gradient(to right, #99f2c8, #1f4037); /* Chrome 10-25, Safari 5.1-6 */
            background: linear-gradient(to right, #99f2c8, #1f4037); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.3);
            border-radius: 10px;
            margin-top: 50px;
        }
        .container h1 {
            text-align: center;
            color: black;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            color: black;
            font-weight: bold;
        }
        .form-group input[type="email"],
        .form-group input[type="text"],
        .form-group textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.7);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .form-group input[type="email"]:hover,
        .form-group input[type="text"]:hover,
        .form-group textarea:hover {
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0px 6px 8px rgba(0, 0, 0, 0.2);
        }
        .form-group textarea {
            resize: none;
        }
        .submit-button {
            text-align: center;
        }
        .submit-button button {
            background-color: #f5778c;
            color: white;
            border: none;
            padding: 10px 25px;
            font-size: 1.2rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit-button button:hover {
            background-color: #dd1435;
        }
    </style>
</head>
<body>
<%@  include file="cus_nav.jsp" %>
    <div class="container">
        <h1>Contact Us</h1>
        <form action="Home.html">
            <div class="form-group">
                <label for="email">Your Email:</label>
                <input type="email" id="email" placeholder="Your email" value="${email}">
            </div>
            <div class="form-group">
                <label for="organizerEmail">Cousellor Email:</label>
                <input type="email" id="organizerEmail" placeholder="Organizer's Email">
            </div>
            <div class="form-group">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" placeholder="Subject">
            </div>
            <div class="form-group">
                <label for="message">Message:</label>
                <textarea id="message" placeholder="Message" rows="6"></textarea>
            </div>
            <div class="submit-button">
                <button type="submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>
