'use strict';

/* Controllers */

angular.module('flickrpedia.controllers', []).
  controller('Main', ['$scope', '$routeParams', function($scope, $routeParams) {
    $scope.term = $routeParams.term;
    $scope.results = [
      {
        url: 'http://farm6.staticflickr.com/5248/5229241621_75fddaa50e_b.jpg'
      },
      {
        url: 'http://farm5.staticflickr.com/4005/4204497503_cacf3abe74_o.jpg'
      }
    ];
  }]);
