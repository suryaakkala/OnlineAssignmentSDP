<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>JFSD</title>

<style type="text/css">

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
<div class="left-container">
 <a href="adminhome" class="button"><span class="icon">Home</span></a>&nbsp;&nbsp;
 </div>
<div class="right-container">
<a href="viewallstudents" class="button"><span class="icon">View All Students</span></a>&nbsp;&nbsp;
<a href="viewstudentbyid" class="button"><span class="icon">View Students By Id</span></a>&nbsp;&nbsp;
<a href="facultyreg" class="button"><span class="icon">Faculty Registration</span></a>&nbsp;&nbsp;
<a href="Adminlogin" class="button"><span class="icon">Logout</span></a>&nbsp;&nbsp;
</div>
</div>
</body>
</html>