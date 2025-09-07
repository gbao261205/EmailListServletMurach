<%-- 
    Document   : thanks
    Created on : Aug 22, 2025, 5:56:18 PM
    Author     : POW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Murach's Java Servlets and JSP</title>
        <link rel="stylesheet" href="styles/main.css"/>
    </head>
    <body>
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information that you entered:</p>
        
        <label>Email:</label>
        <span>${requestScope.user.email}</span><br>
        <label>First Name:</label>
        <span>${requestScope.user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${requestScope.user.lastName}</span><br>
        
        <hr>
        <%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
        <%@ taglib prefix="c" uri="jakarta.tags.core" %>
        <p>
            Current date/time:
            <fmt:formatDate value="${requestScope.currentDate}" pattern="yyyy-MM-dd HH:mm:ss" />
        </p>
        
        <c:choose>
            <c:when test="${not empty sessionScope.users and sessionScope.users.size() >= 1}">
              <p>1) ${sessionScope.users[0].firstName} ${sessionScope.users[0].lastName}
                 – ${sessionScope.users[0].email}</p>
            </c:when>
            <c:otherwise><p>1) –</p></c:otherwise>
          </c:choose>

          <c:choose>
            <c:when test="${not empty sessionScope.users and sessionScope.users.size() >= 2}">
              <p>2) ${sessionScope.users[1].firstName} ${sessionScope.users[1].lastName}
                 – ${sessionScope.users[1].email}</p>
            </c:when>
            <c:otherwise><p>2) –</p></c:otherwise>
          </c:choose>
         <p>Customer Service: ${initParam.custServEmail}</p>
         
         <hr>
         
         <p>To enter another email address, click on the Back button in your browser
            or the Return button below.
        </p>
        
        <form action="" method="post">
            <input type="hidden" name="action" value='join'>
            <input type='submit' value='Return'>
        </form>
        
        <%@ include file="/includes/footer.jsp" %>
    </body>
</html>
