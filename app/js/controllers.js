'use strict';

/* Controllers */

angular.module('flickrpedia.controllers', []).
  controller('Main', ['$scope', '$routeParams', function($scope, $routeParams) {
    $scope.term = $routeParams.term;
  }]);
