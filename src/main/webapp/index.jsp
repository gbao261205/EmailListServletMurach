<!DOCTYPE html>
<html>
    <head>
        <title>Murach's Java Servlets and JSP</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./styles/main.css"/>
    </head>
    <body>
        <h1>Join our email list</h1>
        <p>To join our email list, enter your name and email address below</p>
        
        <form action="${pageContext.request.contextPath}/emailList" method="post">
            <input type="hidden" name="action" value="add">
            
            <label>Email:</label>
            <input type="email" name="email" required><br>
            
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            
            <label>Last Name:</label>
            <input type="text" name="lastName" required><br>
            
            <input type="submit" value="Join now" id="submit">
        </form>
    </body>
</html>
