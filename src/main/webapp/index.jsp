<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="IbaTest">
<head>
    <title>Главная страница</title>
    <meta charset="UTF-8">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.6.1/angular.js"></script>
    <script src="js/app/app.js"></script>

</head>
<body ng-controller="mainFormController">
    <form name="form" role="form" method="POST" action="User" >
        <input type="hidden" name="page" value="/index.jsp" />
        <h3>Ваше имя и фамилия</h3>
        <input type="text" name="username" id="username" value="Andrei Valynko"/>
        <h3>Период, за который производится расчет:</h3>
        <input type="radio" name="periodCalculation" ng-model="user.period" value="3" checked>Квартал<br>
        <input type="radio" name="periodCalculation" ng-model="user.period" value="6">Полугодие<br>
        <input type="radio" name="periodCalculation" ng-model="user.period" value="9">Девять месяцев <br>
        <input type="radio" name="periodCalculation" ng-model="user.period" value="12">Год <br>
        <%--<p>user.period = {{user.period}}</p>--%>
        <%--<p>temp = {{temp}}</p>--%>
        <label><h3>Сумма выручки от реализации товаров (работ, услуг), имущественных прав за выбранный период (без налога на добавленную стоимость), руб.</h3></label>
        <input type="text" name="sumOfRealizationProducts" id="sumOfRealizationProducts" value="123456789"/>
        <h3>Сумма внереализационных доходов за выбранный период (без налога на добавленную стоимость), руб.</h3>
        <input type="text" name="sumOfUnrealizableProducts" id="sumOfUnrealizableProducts" value="12345"/>
        <h3>Наличие места основной работы:</h3>
        <input type="radio" name="placeOfWork" value="true" checked>Да<br>
        <input type="radio" name="placeOfWork" value="false">Нет<br>
        <h3>Наличие права на льготы (инвалид I или II группы, инвалид с детства, участник боевых действий на территории других государств и др.):</h3>
        <input type="radio" name="privileges" value="true" checked>Да<br>
        <input type="radio" name="privileges" value="false">Нет<br>
        <h3>Являетесь ли Вы вдовой (вдовцом), одиноким родителем, приемным родителем, опекуном или попечителем:</h3>
        <input type="radio" name="single" value="true" checked>Да<br>
        <input type="radio" name="single" value="false">Нет<br>
        <h3>Количество детей до 18 лет</h3>
        <input type="text" name="amountOfChildren" id="amountOfChildren" value="3"/>
        <h3>из них количество детей-инвалидов</h3>
        <input type="text" name="amountOfChildrenDisabled" id="amountOfChildrenDisabled" value="1"/>
        <h3>Количество иждивенцев</h3>
        <input type="text" name="amountOfDependents" id="amountOfDependents" value="1"/>
        <h3>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и дополнительной пенсии, заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб.</h3>
        <input type="text" name="costOfInsurance" id="costOfInsurance" value="6789"/>
        <h3>Сумма расходов за выбранный период на получение первого платного образования своего либо близких родственников, руб.</h3>
        <input type="text" name="costOfStudy" id="costOfStudy" value="1234589"/>
        <h3>Сумма расходов за выбранный период на строительство либо приобретение жилья для нуждающихся в улучшении жилищных условий, руб.</h3>
        <input type="text" name="costOfHousing" id="costOfHousing" value="1289"/>
        <h3>Сумма расходов за выбранный период, связанных с осуществлением предпринимательской деятельности, руб.</h3>
        <input type="text" name="costOfBusinessActivities" id="costOfBusinessActivities" value="156789"/>
        <input type="submit" name="Button" class="btn btn-primary" value="Submit" />
    </form>

</body>
</html>
