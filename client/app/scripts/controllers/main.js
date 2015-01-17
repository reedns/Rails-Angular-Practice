'use strict';

/**
 * @ngdoc function
 * @name rangularPracticeApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the rangularPracticeApp
 */
angular.module('rangularPracticeApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
