<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="refresh" content="3; url=main" />
    <title>跳转进入应用</title>
</head>
<body>
<h2 style="background-color:#FF83FA">
    等待网页重定向到/Logins!
</h2><br>
<p>
    服务器时间：<fmt:formatDate value="<%=new Date() %>" pattern="yyyy-MM-dd HH:mm:ss"/> 
<br> <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss"/>
    
</p>
</body>
</html>