'use strict';


// Declare app level module which depends on filters, and services
angular.module('flickrpedia', [
      'flickrpedia.filters',
      'flickrpedia.services',
      'flickrpedia.directives',
      'flickrpedia.controllers']).
  config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
      templateUrl: 'partials/landing.html'});
    $routeProvider.when('/:term', {
      templateUrl: 'partials/main.html',
      controller: 'Main'});
    $routeProvider.otherwise({redirectTo: '/'});
  }]);
