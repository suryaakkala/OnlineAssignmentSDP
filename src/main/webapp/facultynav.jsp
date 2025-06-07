<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>JFSD</title>
<style>
/* From Uiverse.io by faxriddin20 */ 
.nav-bar {
  display: flex;
  background-color: black;
  width: 100%;
  height: 40px;
  align-items: center;
  justify-content: space-between;
  border-radius: 10px;
  padding: 0 10px; /* Add some padding for better spacing */
}

.left-container,
.right-container {
  display: flex;
  align-items: center;
}

.button {
  outline: 0 !important;
  border: 0 !important;
  padding: 0 10px; /* Adjust padding for better spacing */
  height: 40px;
  border-radius: 20px;
  background-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #fff;
  transition: all ease-in-out 0.3s;
  cursor: pointer;
  text-transform: uppercase; /* Ensure text is uppercase */
}

.button:hover {
  transform: translateY(-3px);
}

.icon {
  font-size: 16px; /* Adjust font size for better layout */
  font-weight: bold; /* Make text bold */
}
</style>
</head>
<body>
<div class="nav-bar">
  <!-- Left Container -->
  <div class="left-container">
    <a href="facultyhome" class="button"><span class="icon">FACULTY HOME</span></a>
  </div>
  <!-- Right Container -->
  <div class="right-container">
    <a href="facultyprofile" class="button"><span class="icon">PROFILE</span></a>
    <a href="/" class="button"><span class="icon">LOGOUT</span></a>
  </div>
</div>
</body>
</html>
