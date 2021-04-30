"use strict";

var app = angular.module('mainApp', ['ngRoute']);

app.config(function($routeProvider) {
    $routeProvider
    .when('/', {
        templateUrl: 'login-test-inside.html'
    })
    .when('/student_information', {
        templateUrl: 'student_information.html'
    })
    .otherwise({
        redirectTo: '/'
    });
});

/* The controller recognises 'admin' as username and 'password' as password, 
otherwise it asks to retry if an error. It redirects to student_information.html once in 
but all the other pages need to be modified in order to show them as a SAP. */
app.controller('LoginController', function($scope, $location) {
    $scope.submit = function() {
        var username = $scope.username;
        var password = $scope.password;
        if ($scope.username == 'admin' && $scope.password == 'password') {
            $location.path('/student_information');
        } else {
            alert('Retry');
        }
    }
});