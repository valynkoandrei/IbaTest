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
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <script src="${pageContext.request.contextPath}/js/jquery/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
</head>
<body>
<jsp:useBean id="allUser" class="java.util.ArrayList" scope="session"/>
<div class="container">
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12 details">
            <table class="table">
                <thead class="thead-default">
                    <tr>
                        <th>#</th>
                        <th>Username</th>
                        <th>PlaceOfWork</th>
                        <th>StepOne</th>
                        <th>StepTwo</th>
                        <th>StepThree</th>
                        <th>StepFour</th>
                        <th>StepFive</th>
                        <th>StepSix</th>
                        <th>Tax</th>
                    </tr>
                </thead>
            <c:forEach items="${allUser}" var="user">
                <tbody>
                    <tr>
                        <th scope="row">${user.getId()}</th>
                        <td>${user.getName()}</td>
                        <td>${user.isPlaceOfWork()}</td>
                        <td>${user.getStepOne()}</td>
                        <td>${user.getStepTwo()}</td>
                        <td>${user.getStepThree()}</td>
                        <td>${user.getStepFour()}</td>
                        <td>${user.getStepFive()}</td>
                        <td>${user.getStepSix()}</td>
                        <td>${user.getTax()}</td>
                    </tr>
                </tbody>
            </c:forEach>
            </table>
            <div class="form-group">
                <input type="submit" name="Button" class="btn btn-primary" value="Калькулятор" />
            </div>
            <a href="${pageContext.request.contextPath}/index.jsp" class="au">На главную</a>
        </div>
    </div>
</div>
</body>
</html>