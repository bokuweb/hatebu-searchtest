tanaApp = angular.module('tanaApp', ['ngResource','ngAnimate', 'ngSanitize'])

tanaApp.config ['$httpProvider', ($httpProvider)->
  $httpProvider.defaults.useXDomain = true
  $httpProvider.defaults.withCredentials = true
  delete $httpProvider.defaults.headers.common['X-Requested-With']
    
]

tanaApp.controller 'MainCtrl', ($scope, $resource, $http)->
  bookmark = $resource "http://b.hatena.ne.jp/bokuweb/search/json"
  $scope.bookmark = bookmark.query()

