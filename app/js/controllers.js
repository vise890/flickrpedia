'use strict';

/* Controllers */

angular.module('flickrpedia.controllers', ['ngResource']).
  controller('Main', ['$scope', '$routeParams', '$resource', function($scope, $routeParams, $resource) {
    var Search = $resource('/api/:term');
    var results = Search.get({'term': $routeParams.term}, function() {
      $scope.results = results.images;
      $scope.article.title = results.title;
      $scope.article.text = results.content;
    });
    $scope.term = $routeParams.term;
    $scope.article = {
      'title': 'Loading...',
      'text': '   '
    };
    $scope.results = [];
    for (var i = 0; i < 10; i++) {
      $scope.results.push({url: '/img/1x1.gif'});
    }
  }]);
