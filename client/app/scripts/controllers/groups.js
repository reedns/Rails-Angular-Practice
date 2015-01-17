'use strict';

angular.module('rangularPracticeApp')
  .controller('GroupsCtrl', ['$scope', 'Group', function($scope, Group) {
    $scope.groups = Group.query();
  }]);

