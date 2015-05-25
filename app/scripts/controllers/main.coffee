'use strict'

###*
 # @ngdoc function
 # @name timeApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the timeApp
###
angular.module 'timeApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
