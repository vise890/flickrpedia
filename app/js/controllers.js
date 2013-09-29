'use strict';

/* Controllers */

angular.module('flickrpedia.controllers', []).
  controller('Main', ['$scope', '$routeParams', function($scope, $routeParams) {
    $scope.term = $routeParams.term;
    $scope.article = {
      'title': 'San Francisco',
      'text': 'San Francisco, officially the City and County of San Francisco, '
        + 'is the leading financial and cultural center of Northern California '
        + 'and the San Francisco Bay Area. The only consolidated city-county in'
        + ' California, San Francisco encompasses a land area of about 46.9 '
        + 'square miles (121 km2)[12] on the northern end of the San Francisco '
        + 'Peninsula, giving it a density of about 17,620 people per square '
        + 'mile (6,803 people per km2). It is the most densely settled large '
        + 'city (population greater than 200,000) in the state of California '
        + 'and the second-most densely populated major city in the United '
        + 'States after New York City. San Francisco is the fourth most '
        + 'populous city in California, after Los Angeles, San Diego and San '
        + 'Jose, and the 14th most populous city in the United States—with a '
        + 'Census-estimated 2012 population of 825,863.[14] The city is also '
        + 'the financial and cultural hub of the larger San Jose-San '
        + 'Francisco-Oakland metropolitan area, with a population of 8.4 '
        + 'million.'
    }
    $scope.results = [
      {
        url: 'http://farm6.staticflickr.com/5248/5229241621_75fddaa50e_b.jpg'
      },
      {
        url: 'http://farm5.staticflickr.com/4005/4204497503_cacf3abe74_o.jpg'
      },
      {
        url: 'http://farm3.staticflickr.com/2391/1578205890_d63a07dbbe_o.jpg'
      },
      {
        url: 'http://farm4.staticflickr.com/3086/3204381465_a905159096_b.jpg'
      },
      {
        url: 'http://farm6.staticflickr.com/5250/5229836764_7d44e24870_o.jpg'
      },
      {
        url: 'http://farm8.staticflickr.com/7246/7535991644_a727c28a2e_b.jpg'
      },
      {
        url: 'http://farm8.staticflickr.com/7246/7535991644_a727c28a2e_b.jpg'
      }
    ];
  }]);
