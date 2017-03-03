<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>Главная страница</title>
    <meta charset="UTF-8">
</head>
<body>
<h3>Период, за который производится расчет:</h3>
<input type="radio" name="group1" value="3" checked>Квартал<br>
<input type="radio" name="group1" value="6">Полугодие<br>
<input type="radio" name="group1" value="9">Девять месяцев <br>
<input type="radio" name="group1" value="12">Год <br>
<h3>Сумма выручки от реализации товаров (работ, услуг), имущественных прав за выбранный период (без налога на добавленную стоимость), руб.</h3>
<input type="text" name="sumOfRealizationProducts"/>
<h3>Сумма внереализационных доходов за выбранный период (без налога на добавленную стоимость), руб.</h3>
<input type="text" name="sumOfUnrealizableProducts"/>
<h3>Наличие места основной работы:</h3>
<input type="radio" name="group2" value="true" checked>Да<br>
<input type="radio" name="group2" value="false">Нет<br>
<h3>Наличие права на льготы (инвалид I или II группы, инвалид с детства, участник боевых действий на территории других государств и др.):</h3>
<input type="radio" name="group3" value="true" checked>Да<br>
<input type="radio" name="group3" value="false">Нет<br>
<h3>Являетесь ли Вы вдовой (вдовцом), одиноким родителем, приемным родителем, опекуном или попечителем:</h3>
<input type="radio" name="group4" value="true" checked>Да<br>
<input type="radio" name="group4" value="false">Нет<br>
<h3>Количество детей до 18 лет</h3>
<input type="text" name="amountOfChildren"/>
<h3>из них количество детей-инвалидов</h3>
<input type="text" name="amountOfChildrenDisabled"/>
<h3>Количество иждивенцев</h3>
<input type="text" name="amountOfDependents"/>
<h3>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и дополнительной пенсии, заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб.</h3>
<input type="text" name="costOfInsurance"/>
<h3>Сумма расходов за выбранный период на получение первого платного образования своего либо близких родственников, руб.</h3>
<input type="text" name="costOfStudy"/>
<h3>Сумма расходов за выбранный период на строительство либо приобретение жилья для нуждающихся в улучшении жилищных условий, руб.</h3>
<input type="text" name="costOfHousing"/>
<h3>Сумма расходов за выбранный период, связанных с осуществлением предпринимательской деятельности, руб.</h3>
<input type="text" name="costOfBusinessActivities"/>
<form name="form" action="servlet" method="POST">
    <input type="submit" name="Button" class="input-button" value="Submit" />
</form>
</body>
</html>
