<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome to Delta</title>
</head>
<body style="background-color: black; padding: 50px;">
    <jsp:useBean id="calcBean" scope="page" class="beans.CalculatorBean"/>
    <jsp:setProperty name="calcBean" property="*"/>


    <div style="background-color: white; padding: 5%;">
        <div style="text-align: center;">
            <h1>Welcome to Delta!</h1>
            <button type="button"><a href="index.jsp">Home</a></button>
            <h3>Simple calculator where the message string is more complicated than the calculator itself</h3>
            <p><br/>Enter the numbers in each input box you wish to calculate then select an operator from the list.<br/></p>
            <div style="margin-top: 20px; margin-bottom: 20px;">
                <form method="post">
                    <input type="number" step="any" id="calcFieldValue1" name="calcFieldValue1"
                           style="width: 30%;" placeholder="Enter your first value here!"/>
                    <br/>
                    <input type="number" step="any" id="calcFieldValue2" name="calcFieldValue2"
                           style="width: 30%;" placeholder="Enter your second value here!"/>
                    <br/>
                    <table style="margin-left: auto; margin-right:auto;">
                        <tr>
                            <td><label for="add">[<input type="radio" id="add" name="chosenOperator" value="+"/> Add]</label>
                            </td>
                            <td><label for="subtract">[<input type="radio" id="subtract" name="chosenOperator" value="-"/>Subtract]</label>
                            </td>
                            <td><label for="multiply">[<input type="radio" id="multiply" name="chosenOperator" value="*"/>Multiply]</label>
                            </td>
                            <td><label for="divide">[<input type="radio" id="divide" name="chosenOperator"
                                                            value="/"/>Divide]</label>
                            </td>
                        </tr>
                    </table>

                    <br/>
                    <button type="submit" style="margin-top: 3px; margin-bottom: 3px;">Go go Power Rangers!</button>
                    <br/>


                </form>
                <%= calcBean.showResultOrMessage() %>
                <br/>

            </div>
        </div>
    </div>
</body>
</html>
