var IbaTest = angular.module('IbaTest', []);

IbaTest.controller('mainFormController', function($scope) {
    $scope.user = {};
    $scope.user.period = '3';
    $scope.user.placeOfWork = "true";
    $scope.user.sumOfRealizationProducts = "123";
    $scope.user.sumOfUnrealizableProducts = "134";
    $scope.user.costOfBusinessActivities = '4563';
});