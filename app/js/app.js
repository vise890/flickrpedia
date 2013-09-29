'use strict';


// Declare app level module which depends on filters, and services
angular.module('flickrpedia', [
      'flickrpedia.filters',
      'flickrpedia.services',
      'flickrpedia.directives',
      'flickrpedia.controllers']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/:term', {
      templateUrl: 'partials/landing.html',
      controller: 'Main'});
    $routeProvider.otherwise({redirectTo: '/san-francisco'});
  }]);
