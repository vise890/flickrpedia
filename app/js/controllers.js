'use strict';

/* Controllers */

angular.module('flickrpedia.controllers', ['ngResource']).
  controller('Main', ['$scope', '$routeParams', '$resource', function($scope, $routeParams, $resource) {
    var Search = $resource('/api/:term');
    var results = Search.get({'term': $routeParams.term}, function() {
      $scope.results = results.images;
      $scope.article.title = results.title;
    });
    $scope.term = $routeParams.term;
    $scope.article = {
      'title': 'Cupcakes',
      'text': 'Cotton candy donut pie liquorice tart pie jelly-o bonbon oat cake. Pastry liquorice toffee chocolate bar caramels toffee lemon drops jelly-o halvah. Lollipop candy canes jujubes jelly beans. Lollipop muffin bonbon biscuit lemon drops bonbon apple pie. Apple pie powder caramels dragée. Candy canes cotton candy pudding caramels pastry cupcake. Donut bear claw lollipop tootsie roll gingerbread marzipan brownie. Gummi bears brownie croissant soufflé pie gingerbread. Tiramisu brownie liquorice sugar plum. Carrot cake jelly-o chupa chups topping danish. Chupa chups fruitcake bear claw macaroon dessert donut. Sweet roll unerdwear.com marzipan muffin jelly beans macaroon chocolate toffee.'
    };
  }]);
