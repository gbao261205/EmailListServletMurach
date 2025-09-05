<%-- 
    Document   : footer
    Created on : Sep 5, 2025, 9:17:46 AM
    Author     : POW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
    </head>
    <body>
        <%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
        <%
            GregorianCalendar currentDate = new GregorianCalendar();
            int currentYear = currentDate.get(Calendar.YEAR);
        %>
        <p>&copy; Copyright <%= currentYear %> Mike Murach &amp; Associates</p>
    </body>
</html>-->
<p>&copy; Copyright ${currentYear} Mike Murach &amp; Associates</p>
