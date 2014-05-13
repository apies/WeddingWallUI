App File
--------

This file ties the app together with dependencies listed as
an array of strings as the second argument. The third argument
instantiates the routes and associates them with controllers
and templates

    angular
      .module('weddingWallApp', [
        'ngCookies',
        'ngResource',
        'ngSanitize',
        'ngRoute',
        'weddingWallApp:services'
      ])
      .config ($routeProvider) ->
        $routeProvider
          .when '/',
            templateUrl: 'views/main.html'
            controller: 'MainCtrl'
          .when '/wedding_wall',
            templateUrl: 'views/wedding_wall.html'
            controller: 'WeddingWallCtrl'
          .otherwise
            redirectTo: '/'

