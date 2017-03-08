var IbaTest = angular.module('IbaTest', []);

IbaTest.controller('mainFormController', function($scope) {
    $scope.user = {};
    $scope.user.period = '3';
    $scope.user.placeOfWork = "true";
    $scope.user.sumOfRealizationProducts = "0";
    $scope.user.sumOfUnrealizableProducts = "0";
    $scope.user.costOfBusinessActivities = '0';
    $scope.user.child_amount = 0;
    $scope.user.child_disabled_amount = [];
    // $scope.user.amountOfChildrenDisabled= ;



    $scope.$watch('user.child_amount', function() {

        $scope.user.child_disabled_amount = [];
        for (var i = 0; i < +$scope.user.child_amount + 1; i++) {
            $scope.user.child_disabled_amount.push(i);
        }
    });
});