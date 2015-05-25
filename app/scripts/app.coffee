'use strict'

###*
 # @ngdoc overview
 # @name timeApp
 # @description
 # # timeApp
 #
 # Main module of the application.
###
angular
  .module 'timeApp', [
    'ngRoute',
    'ngTouch'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'

