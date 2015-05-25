'use strict'

###*
 # @ngdoc function
 # @name timeApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the timeApp
###
angular.module 'timeApp'
  .controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
