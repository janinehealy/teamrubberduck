"use strict";

// Creating an angular app
var mainApp = angular.module("mainApp", []);

// Pointing out the controller for mainApp
mainApp.controller("timetableController", function($scope, $http){
    // Create timetableSearchButton which will get the data from /timetable/<subject>
    $scope.timetableSearchButton = function(){
        $http.get("/timetable/" + $scope.timetableSearchBox).then(function(response){
            $scope.selectedTimetable = response.data;
        });
    };

    // Create function that will update timetable information on Update button click
    $scope.timetableUpdate = function() {
        $http.put("/timetables", $scope.selectedTimetable).then(function(response) {
            // Alert user
            window.alert("Entry updated.");
        });
    };

    // Create function to create new teacher info on Create button click
    $scope.timetableCreate = function() {
        $http.post("/timetables", $scope.selectedTimetable).then(function(response) {
            // Alert user
            window.alert("Entry created.");
        });
    };   
    
        // Function will delete a record when user click on the delete record button
        $scope.timetableDelete = function() {
            $http.delete("/timetables" + $scope.selectedTimetable).then(function(response) {
                // Alert user
                window.alert("Entry delete");
               });
        };
});