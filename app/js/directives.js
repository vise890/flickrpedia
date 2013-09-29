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
  })
  .directive('slideshow', function() {
    return function(scope, elm, attrs) {
      elm.Kenburns({
        images: [
          "img/image0.jpg",
          "img/image1.jpg",
          "img/image2.jpg",
          "img/image3.jpg",
          "img/image4.jpg",
          "img/image5.jpg"
        ],
        scale:0.75,
        duration:8000,
        fadeSpeed:1200,
        ease3d:'cubic-bezier(0.222, 0.025, 0.275, 0.475)',
      });
    };
  });
