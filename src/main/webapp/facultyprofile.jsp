<%@ page import="com.klef.jfsd.springboot.model.Faculty" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
Faculty f = (Faculty) session.getAttribute("faculty");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Profile</title>
<link rel="stylesheet" href="style/studentnav.css">
<style>
html, body {
    height: 100%; 
    margin: 0;
}

body {
    background-image: url('../images/image-1.png'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    color: #333; 
    height: 100%;
    background-attachment: fixed;
     overflow: hidden;
}
  /* From Uiverse.io by Smit-Prajapati */ 
  .card {
    width: 400px;
    height: 400px;
    background: white;
    border-radius: 32px;
    padding: 3px;
    position: relative;
    box-shadow: #604b4a30 0px 70px 30px -50px;
    transition: all 0.5s ease-in-out;
  }

  .card .mail {
    position: absolute;
    right: 2rem;
    top: 1.4rem;
    background: transparent;
    border: none;
  }

  .card .mail svg {
    stroke: #fbb9b6;
    stroke-width: 3px;
  }

  .card .mail svg:hover {
    stroke: #f55d56;
  }

  .card .profile-pic {
    position: absolute;
    width: calc(100% - 8px);
    height: calc(100% - 8px);
    top: 4px;
    left: 4px;
    bottom: 4px;
    right: 4px;
    border-radius: 29px;
    z-index: 1;
    border: 0px solid #fbb9b6;
    overflow: hidden;
    transition: all 0.5s ease-in-out 0.2s, z-index 0.5s ease-in-out 0.2s;
  }

  .card .profile-pic img {
    -o-object-fit: cover;
    object-fit: cover;
    width: 100%;
    height: 100%;
    -o-object-position: 0px 0px;
    object-position: 0px 0px;
    transition: all 0.5s ease-in-out 0s;
  }

  .card .profile-pic svg {
    width: 100%;
    height: 100%;
    -o-object-fit: cover;
    object-fit: cover;
    -o-object-position: 0px 0px;
    object-position: 0px 0px;
    transform-origin: 45% 20%;
    transition: all 0.5s ease-in-out 0s;
  }

  .card .bottom {
    position: absolute;
    bottom: 4px;
    left: 4px;
    right: 4px;
    background: #fbb9b6;
    top: 81%;
    border-radius: 29px;
    z-index: 2;
    box-shadow: rgba(96, 75, 74, 0.1882352941) 0px 5px 5px 0px inset;
    overflow: hidden;
    transition: all 0.5s cubic-bezier(0.645, 0.045, 0.355, 1) 0s;
  }

  .card .bottom .content {
    position: absolute;
    bottom: 0;
    left: 1.5rem;
    right: 1.5rem;
    height: 200px;
  }

  .card .bottom .content .name {
  display: block;
  font-size: 1rem;  /* Reduced font size for better compactness */
  color: white;
  text-transform: uppercase;
  font-weight: bold;
  line-height: 1.2;  /* Decreased line spacing */
  margin-bottom: 5px; /* Space between lines */
}

.card .bottom .content .about-me {
  display: block;
  font-size: 0.9rem;
  color: white;
  text-transform: uppercase;
  margin-top: 1rem;
  line-height: 1.3;  /* Decreased line spacing */
}

.card .bottom .content p {
  margin: 0;  /* Remove any extra margin around paragraphs */
}

  .card .bottom .bottom-bottom {
    position: absolute;
    bottom: 1rem;
    left: 1.5rem;
    right: 1.5rem;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }

  .card .bottom .bottom-bottom .social-links-container {
    display: flex;
    gap: 1rem;
  }

  .card .bottom .bottom-bottom .social-links-container svg {
    height: 20px;
    fill: white;
    filter: drop-shadow(0 5px 5px rgba(165, 132, 130, 0.1333333333));
  }

  .card .bottom .bottom-bottom .social-links-container svg:hover {
    fill: #f55d56;
    transform: scale(1.2);
  }

  .card .bottom .bottom-bottom .button {
    background: white;
    color: #fbb9b6;
    border: none;
    border-radius: 20px;
    font-size: 0.6rem;
    padding: 0.4rem 0.6rem;
    box-shadow: rgba(165, 132, 130, 0.1333333333) 0px 5px 5px 0px;
  }

  .card .bottom .bottom-bottom .button:hover {
    background: #f55d56;
    color: white;
  }

  .card:hover {
    border-top-left-radius: 55px;
  }

  .card:hover .bottom {
    top: 20%;
    border-radius: 80px 29px 29px 29px;
    transition: all 0.5s cubic-bezier(0.645, 0.045, 0.355, 1) 0.2s;
  }

  .card:hover .profile-pic {
    width: 100px;
    height: 100px;
    aspect-ratio: 1;
    top: 10px;
    left: 10px;
    border-radius: 50%;
    z-index: 3;
    border: 7px solid #fbb9b6;
    box-shadow: rgba(96, 75, 74, 0.1882352941) 0px 5px 5px 0px;
    transition: all 0.5s ease-in-out, z-index 0.5s ease-in-out 0.1s;
  }

  .card:hover .profile-pic:hover {
    transform: scale(1.3);
    border-radius: 0px;
  }

  .card:hover .profile-pic img {
    transform: scale(2.5);
    -o-object-position: 0px 25px;
    object-position: 0px 25px;
    transition: all 0.5s ease-in-out 0.5s;
  }

  .card:hover .profile-pic svg {
    transform: scale(2.5);
    transition: all 0.5s ease-in-out 0.5s;
  }
</style>
</head>
<body>
<%@ include file="facultynav.jsp" %><br/><br/>
<div class="container" style="display: flex; justify-content: center; align-items: center; height: 100vh;">
  <div class="card">
    <!-- Avatar & Profile Image -->
    <div class="profile-pic">
      <!-- You can add an image or icon here -->
      <img src="images/profile.jpeg" alt="Profile Picture">
    </div>
    <!-- Profile Info -->
    <div class="bottom">
      <div class="content">
        <p class="name"><strong>ID:</strong> <%= f != null ? f.getId() : "Not available" %></p>
        <p class="name"><strong>Name:</strong> <%= f != null ? f.getName() : "Not available" %></p>
        <p class="name"><strong>Gender:</strong> <%= f != null ? f.getGender() : "Not available" %></p>
        <p class="name"><strong>Email:</strong> <%= f != null ? f.getEmail() : "Not available" %></p>
      </div>
      <!-- Button Example -->
      <div class="bottom-bottom">
        <a href="updatefacultyprofile" class="button" >Edit</a>>&nbsp;&nbsp;
        
      </div>
    </div>
  </div>
</div>
</body>
</html>
