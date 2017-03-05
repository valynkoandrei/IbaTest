<%--
  Created by IntelliJ IDEA.
  User: Андрей
  Date: 03.03.2017
  Time: 23:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>View</title>
</head>
<body>
<jsp:useBean id="allUser" class="java.util.ArrayList" scope="session"/>

<h1>It's OK!</h1>
<table>
    <c:forEach items="${allUser}" var="user">
        <tr>
            <td>
                ${user.getName()}
            </td>
        </tr>
        <tr>
            <td>
                ${user.getPeriodCalculation()}
            </td>
        </tr>
        <tr>
            <td>
                ${user.getSumOfRealizationProducts()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getSumOfUnrealizableProducts()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.isPlaceOfWork()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.isPrivileges()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.isSingle()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getAmountOfChildren()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getAmountOfChildrenDisabled()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getAmountOfDependents()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getCostOfInsurance()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getCostOfStudy()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getCostOfHousing()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getCostOfBusinessActivities()}
            </td>
        </tr>
        <tr>
            <td>
                    ${user.getTax()}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
