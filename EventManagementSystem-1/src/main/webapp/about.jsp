<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <style>
       body {
           margin: 0;
           font-family: Arial, sans-serif;
           background: linear-gradient(200deg, rgb(233, 228, 234) 0%, lightblue 50%, rgb(195, 189, 198) 100%);
       }

       .trans {
           text-align: center;
           margin: 20px 0;
           margin-top: 10%;
       }

       .trans h1 {
           font-size: 2rem;
           color: coral;
       }

       .matter {
           margin: 20px;
           padding: 20px;
           background-color: white;
           box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
           transition: transform 0.3s ease-in-out;
       }

       .matter:hover {
           transform: scale(1.05);
           box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
       }

       .matter-1 {
           margin: 20px;
           padding: 10px;
       }

       .list ul {
           margin: 20px;
           padding: 10px;
           background-color: transparent;
           box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
           list-style: none;
           padding: 0;
           opacity: 0;
           transition: opacity 0.3s;
       }

       .list ul:hover {
           opacity: 1;
       }

       .matter:hover + .list ul {
           opacity: 1;
       }

       .list li {
           margin: 10px 0;
           padding: 10px;
           border-radius: 20px;
           transition: background-color 0.3s;
           position: relative;
           text-align: left;
       }

       .list .color-1 { background-color: #d6b553; }
       .list .color-2 { background-color: #5fb473; }
       .list .color-3 { background-color: #6abecb; }
       .list .color-4 { background-color: #d55e6a; }
       .list .color-5 { background-color: #946ad9; }

       .list li:hover {
           background-color: #dcdcdc;
           transform: scale(1.05);
           box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.3);
       }

       .list li::before {
           content: "\2022"; /* Bullet point */
           color: coral;
           font-weight: bold;
           display: inline-block;
           width: 1em;
           margin-left: -1em;
           position: absolute;
           left: 0;
       }

       @media (max-width: 768px) {
           .matter, .matter-1, .list ul {
               margin: 10px;
               padding: 10px;
           }
           .matter:hover {
               transform: none;
               box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
           }
           .matter-1 {
               margin: 10px;
               padding: 10px;
           }
           .list ul {
               margin: 10px;
               padding: 10px;
           }
       }
    </style>
</head>
<body>
    <div>
        <jsp:include page="NavBar1.jsp" />
    </div>
    
    <div class="trans">
        <h1>About<u>Us</u></h1>
    </div>
    <div class="matter">
        <p> &#128293 An <u>Event Management System (EMS)</u> is a software application designed to streamline and simplify the process of planning, organizing, and executing events. It provides a centralized platform for event organizers and planners to manage various aspects of events, from the initial planning stages to post-event analysis. EMS tools and features are designed to enhance efficiency, collaboration, and communication throughout the event management process.</p>
    </div>
    <br>
    <div class="matter-1">
        <p>Key features and functionalities of an Event Management System include:&nbsp;&nbsp;<u>Hover on me </u>&#8595;</p>
    </div>
    <div class="list">
        <ul>
            <li class="color-1">Event Planning and Scheduling: EMS allows users to create event schedules, set dates, times, and locations for various event activities, sessions, and sessions.</li>
            <li class="color-2">Registration and Ticketing: Event attendees can register for events online, purchase tickets, and receive confirmation details. Organizers can manage registrations, collect attendee information, and issue e-tickets.</li>
            <li class="color-3">Venue Management: EMS helps manage venue logistics, including seating arrangements, room assignments, and audio-visual equipment setup.</li>
            <li class="color-4">Speaker and Presenter Management: Organizers can manage speaker profiles, bios, and session details. EMS may also include tools for speaker communication and coordination.</li>
            <li class="color-5">Exhibitor and Sponsor Management: For trade shows and conferences, EMS can facilitate exhibitor and sponsor registration, booth assignments, and sponsorship details.</li>
            <!-- Add more list items with appropriate color classes -->
            <li class="color-1">Communication and Collaboration: EMS platforms often provide tools for sending invitations, event updates, and notifications to attendees, speakers, and stakeholders. Some systems offer communication features like discussion forums and chat.</li>
            <li class="color-2">Marketing and Promotion: Event marketing tools within an EMS enable organizers to create and execute marketing campaigns, manage social media promotion, and track attendee engagement.</li>
            <li class="color-3">Mobile App Integration: Many modern EMS platforms offer mobile app integration, allowing attendees to access event information, schedules, and networking opportunities via a dedicated mobile app.</li>
            <li class="color-4">Check-In and On-Site Management: On the day of the event, EMS supports attendee check-in processes, badge printing, and session tracking.</li>
            <li class="color-5">Analytics and Reporting: Post-event, EMS provides insights into attendee engagement, session popularity, and overall event performance. This data can be used for future event planning and improvement.</li>
            <li class="color-1">Feedback and Surveys: EMS platforms often offer tools for collecting attendee feedback and surveys, helping organizers gather insights to enhance future events.</li>
            <li class="color-2">Integration with Third-Party Tools: Many EMS solutions offer integrations with email marketing software, CRM systems, payment gateways, and other tools to enhance functionality.</li>
        </ul>
    </div>
</body>
</html>
