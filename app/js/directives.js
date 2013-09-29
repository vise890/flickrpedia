'use strict';

/* Directives */

angular.module('flickrpedia.directives', [])
  .directive('onKeyup', function($location) {
    return function(scope, elm, attrs) {
        elm.bind('keyup', function(evt) {
          if (evt.which == 13) {
            window.location.href = '#/' + this.value;
          }
        });
    };
});
