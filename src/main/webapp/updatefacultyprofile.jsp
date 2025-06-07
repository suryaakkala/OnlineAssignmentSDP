<%@page import="com.klef.jfsd.springboot.model.Faculty"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Faculty f = (Faculty) session.getAttribute("faculty");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<link rel="stylesheet" href="style/facultynav.css">
</head>
<body>
<%@include file="facultynav.jsp" %>
<h3 align="center" style="color: red;">Faculty Update Profile Form</h3>
<div class="container">
<form method="post" action="updatefac">
<label>ID</label>
<input type="number" class="form-control" name="fid" value="<%=f.getId() %>" readonly required />
<br/>
<label>Enter Name</label>
<input type="text" class="form-control" name="fname" value="<%=f.getName() %>" required />
<br/>
<label>Select Gender</label>
<input type="radio" name="fgender" class="form-check-input" value="Male" required />Male
<input type="radio" name="fgender" class="form-check-input" value="Female" required />Female
<input type="radio" name="fgender" class="form-check-input" value="Others" required />Others
<br/>
<label>Enter Email ID</label>
<input type="email" class="form-control" name="femail" value="<%=f.getEmail() %>" readonly required />
<br/>
<label>Enter Password</label>
<input type="password" class="form-control" name="fpwd" value="<%=f.getPassword() %>" required />
<br/>
<label>Enter Department</label>
<input type="text" class="form-control" name="fdept" value="<%=f.getDepartment() %>" required />
<br/>
<input type="submit" value="Update" class="btn btn-success" />
<input type="reset" value="Clear" class="btn btn-success" />


</form>
</div>
</body>
</html>