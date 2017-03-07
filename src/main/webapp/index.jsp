<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="IbaTest">
<head>
    <title>Главная страница</title>
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <script src="${pageContext.request.contextPath}/js/angular/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
    <script src="js/app/app.js"></script>

</head>
<body ng-controller="mainFormController">
    <form name="myForm" role="form" method="POST"  action="User" novalidate >
        <input type="hidden" name="page" value="/index.jsp" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 details">
                    <div class="col-lg-6 col-md-6 col-sm-6 xi">
                        <p>Ваше имя и фамилия</p>
                        <label>
                            <input id="username"
                                       type="text"
                                       placeholder="Andrei Valynko"
                                       class="form-control"
                                       name="myFormUsername"
                                       ng-model="myFormUsername"
                                       ng-required="true"
                                       ng-minlength="2"/>
                        </label>
                    </div>
                <div class="col-lg-6 col-md-6 col-sm-6 xi">
                    <span class="alert alert-danger" ng-show="myForm.myFormUsername.$dirty && myForm.myFormUsername.$error.required">
                            The User Name is Mandatory
                    </span>
                    <span class="alert alert-danger" ng-show="myForm.myFormUsername.$dirty && myForm.myFormUsername.$error.minlength">
                        The First Name should be minimum 2 characters
                    </span>
                </div>

                <div class="col-lg-6 col-md-6 col-sm-6 xi">
                    <p>Период, за который производится расчет:</p>
                    <div class="radio">
                        <label>
                            <input type="radio" id="periodCalculation3"
                                   name="periodCalculation"
                                   ng-model="user.period"
                                   value="3"
                                   ng-checked="true"
                                   ng-required="true"
                                >Квартал
                            </label>
                        </div>

                        <div class="radio">
                            <label>
                                <input
                                        type="radio"
                                        id="periodCalculation6"
                                        name="periodCalculation"
                                        ng-model="user.period"
                                        value="6"
                                >Полугодие
                            </label>
                        </div>

                        <div class="radio">
                            <label>
                                <input
                                        type="radio"
                                        id="periodCalculation9"
                                        name="periodCalculation"
                                        ng-model="user.period"
                                        value="9"
                                >Девять месяцев
                            </label>
                        </div>

                        <div class="radio">
                            <label>
                                <input
                                        type="radio"
                                        id="periodCalculation12"
                                        name="periodCalculation"
                                        ng-model="user.period"
                                        value="12"
                                >Год
                            </label>
                        </div>

                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 xi">

                    <div class="form-group xu">
                        <label><p>Сумма выручки от реализации товаров (работ, услуг), имущественных прав за выбранный период (без налога на добавленную стоимость), руб.</p></label>

                        <input class="form-control" type="text" name="sumOfRealizationProducts" id="sumOfRealizationProducts" ng-model="user.sumOfRealizationProducts" />

                    </div>

                    <br>

                    <div class="form-group xu">
                        <label><p>Сумма внереализационных доходов за выбранный период (без налога на добавленную стоимость), руб.</p></label>

                        <input class="form-control" type="text" name="sumOfUnrealizableProducts" id="sumOfUnrealizableProducts" ng-model="user.sumOfUnrealizableProducts"/>

                    </div>
                </div>
                <br>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="form-group">
                        <label><p>Наличие места основной работы:</p></label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="placeOfWork" value="true" ng-model="user.placeOfWork" ng-checked="true">Да
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="placeOfWork" value="false" ng-model="user.placeOfWork" ng-checked="false">Нет
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label><p>Наличие права на льготы (инвалид I или II группы, инвалид с детства, участник боевых действий на территории других государств и др.):</p></label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="privileges" value="true" ng-disabled="user.placeOfWork  == 'true'" checked>Да
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="privileges" value="false" ng-disabled="user.placeOfWork == 'true'">Нет
                            </label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label><p>Являетесь ли Вы вдовой (вдовцом), одиноким родителем, приемным родителем, опекуном или попечителем:</p></label>
                        <div class="radio">
                            <label>
                                <input type="radio" name="single" value="true"  ng-disabled="user.placeOfWork  == 'true'" checked>Да
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input type="radio" name="single" value="false" ng-disabled="user.placeOfWork  == 'true'">Нет
                            </label>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 xn">
                    <div class="form-group">
                        <label><p>Количество детей до 18 лет</p></label><br>

                        <input class="form-control" type="text" name="amountOfChildren" id="amountOfChildren" value="3" ng-disabled="user.placeOfWork  == 'true'"/><br>

                    </div>

                    <br>

                    <div class="form-group">
                        <label for="amountOfChildrenDisabled">из них количество детей-инвалидов:</label>
                        <select class="form-control" name="amountOfChildrenDisabled" id="amountOfChildrenDisabled" value="1" ng-disabled="user.placeOfWork  == 'true'"/><br>>
                            <option>4</option>

                        </select>
                    </div>

                    <%--<div class="form-group">--%>
                        <%--<label><p>из них количество детей-инвалидов</p></label><br>--%>

                        <%--<input class="form-control" type="text" name="amountOfChildrenDisabled" id="amountOfChildrenDisabled" value="1" ng-disabled="user.placeOfWork  == 'true'"/><br>--%>

                    <%--</div>--%>

                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 xn">

                    <div class="form-group">
                        <label><p>Количество иждивенцев</p></label><br>

                        <input class="form-control" type="text" name="amountOfDependents" id="amountOfDependents" value="6789" ng-disabled="user.placeOfWork  == 'true'" /><br>

                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12 xf">
                    <div class="form-group">
                        <label><p>Сумма расходов за выбранный период по страховым взносам по договорам добровольного страхования жизни и дополнительной пенсии, заключенным на срок не менее трех лет, а также по договорам добровольного страхования медицинских расходов, руб.</p></label><br>

                        <input class="form-control" type="text" name="costOfInsurance" id="costOfInsurance" value="123" ng-disabled="user.placeOfWork  == 'true'" /><br>

                    </div>

                    <div class="form-group">
                        <label><p>Сумма расходов за выбранный период на получение первого платного образования своего либо близких родственников, руб.</p></label><br>

                        <input class="form-control" type="text" name="costOfStudy" id="costOfStudy" value="1234589" ng-disabled="user.placeOfWork  == 'true'" /><br>

                    </div>

                    <div class="form-group">
                        <label><p>Сумма расходов за выбранный период на строительство либо приобретение жилья для нуждающихся в улучшении жилищных условий, руб.</p></label><br>

                        <input class="form-control" type="text" name="costOfHousing" id="costOfHousing" value="1289" ng-disabled="user.placeOfWork  == 'true'" /><br>

                    </div>

                    <div class="form-group">
                        <label><p>Сумма расходов за выбранный период, связанных с осуществлением предпринимательской деятельности, руб.</p></label><br>

                        <input class="form-control" type="text" id="costOfBusinessActivities" name="costOfBusinessActivities" ng-model="user.costOfBusinessActivities"/><br>

                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 xd">

                        <span class="alert alert-danger" ng-show="!((+user.sumOfUnrealizableProducts + +user.sumOfRealizationProducts) >= +user.costOfBusinessActivities)">The value is not a valid integer!</span>


                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 xd">
                        <br>
                        <div class="form-group">
                            <input type="submit" name="Button" href="jsp/View.html" class="btn btn-primary" value="Рассчитать" />
                        </div>
                    </div>
                </div>
        </div>
    </div>
</div>
            </form>

</body>
</html>
