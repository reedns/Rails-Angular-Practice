'use strict';

/**
 * @ngdoc function
 * @name rangularPracticeApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the rangularPracticeApp
 */
angular.module('rangularPracticeApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
