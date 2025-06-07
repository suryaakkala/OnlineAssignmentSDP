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
<title>Student Home</title>
<!-- Link to the external CSS file -->
<link rel="stylesheet" href="style/studentnav.css">
</head>
<body>
<%@include file="studentnavbar.jsp" %><br/><br/>
Welcome <%=s.getName()%>
</body>
</html>
