'use strict';

/* Filters */

angular.module('flickrpedia.filters', []).
  filter('truncate', function() {
    return function(text) {
      var limit = 900;
      if (text.length > limit) {
        return String(text).substring(0, limit) + '...';
      } else {
        return text;
      }
    };
});
