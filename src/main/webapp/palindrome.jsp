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
            <h3>Is the word a palindrome or not?</h3>
            <p><br/>Type a word in the input field to check if it is a palindrome-type word.<br/></p>
            <button type="button"><a href="calculator.jsp">Simple Calculator</a></button>
            <div style="margin-top: 20px; margin-bottom: 20px;">
                <form method="post">
                    <input type="text" id="palindromeFieldValue" name="palindromeFieldValue"
                           style="width: 30%;" placeholder="Enter your word here!"/>
                    <br/>
                    <button type="submit" style="margin-top: 3px; margin-bottom: 3px;">Go go Power Rangers!</button>
                    <br/>
                </form>
                <%= palindromeBean.inputWordPalindromeCheck() %>
                <br/>

            </div>
        </div>
    </div>
</body>
</html>
