<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student s = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" href="style/studentnav.css">
</head>
<body>
<%@include file="studentnavbar.jsp" %>
<h3 align="center">Student Update Profile Form</h3>
<div class="container">
<form method="post" action="update">
<label>ID</label>
<input type="number" class="form-control" name="sid" value="<%=s.getId() %>" readonly required />
<br/>
<label>Enter Name</label>
<input type="text" class="form-control" name="sname" value="<%=s.getName() %>" required />
<br/>
<label>Select Gender</label>
<input type="radio" name="sgender" class="form-check-input" value="Male" required />Male
<input type="radio" name="sgender" class="form-check-input" value="Female" required />Female
<input type="radio" name="sgender" class="form-check-input" value="Others" required />Others
<br/>
<label>Enter Email ID</label>
<input type="email" class="form-control" name="semail" value="<%=s.getEmail() %>" readonly required />
<br/>
<label>Enter Password</label>
<input type="password" class="form-control" name="spwd" value="<%=s.getPassword() %>" required />
<br/>
<label>Enter Department</label>
<input type="text" class="form-control" name="sdept" value="<%=s.getDepartment() %>" required />
<br/>
<input type="submit" value="Update" class="btn btn-success" />
<input type="reset" value="Clear" class="btn btn-success" />


</form>
</div>
</body>
</html>