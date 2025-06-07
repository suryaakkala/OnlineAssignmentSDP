<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Student</title>
</head>
<body>
<%@include file="adminnav.jsp" %><br/>
<h3 align="center">Display Student</h3>
ID: <c:out value="${s.id}"></c:out><br/>
NAME: <c:out value="${s.name}"></c:out><br/>
GENDER: <c:out value="${s.gender}"></c:out><br/>
EMAIL: <c:out value="${s.email}"></c:out><br/>
DEPARTMENT: <c:out value="${s.department}"></c:out><br/>
</body>
</html>