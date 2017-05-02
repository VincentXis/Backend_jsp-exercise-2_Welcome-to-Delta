<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Delta</title>
</head>
<body style="background-color: black; padding: 50px;">
    <jsp:useBean id="palindromeBean" scope="page" class="beans.PalindromeBean"/>
    <jsp:setProperty name="palindromeBean" property="*"/>


    <div style="background-color: white; padding: 5%;">
        <div style="text-align: center;">
            <h1>Welcome to Delta!</h1>
            <p><br/>Press one of the buttons i guess<br/></p>
            <nav>

            </nav>
            <button type="button"><a href="calculator.jsp">Simple Calculator</a></button>
            <button type="button"><a href="palindrome.jsp">Is the word a palindrome?</a></button>
        </div>
    </div>
</body>
</html>
