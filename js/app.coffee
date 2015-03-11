tanaApp = angular.module('tanaApp', ['ngResource','ngAnimate', 'ngCookies'])

tanaApp.config ['$httpProvider', ($httpProvider)->
  $httpProvider.defaults.useXDomain = true
  $httpProvider.defaults.withCredentials = true
  $httpProvider.defaults.headers.common = 'Content-Type: application/json'
  delete $httpProvider.defaults.headers.common['X-Requested-With']
    
]

tanaApp.controller 'MainCtrl', ($scope, $resource, $http,$cookies)->
  console.dir $cookies
  headers = 
    'Access-Control-Allow-Origin' : '*'
    'Content-Type': 'application/json'
    'Accept': 'application/json'
  $http.defaults.headers.post.Cookies = $cookies.getAll()
  $http.defaults.useXDomain = true
  bookmark = $resource "http://b.hatena.ne.jp/bokuweb/search/json", {}, {method: "GET", headers: headers, withCredentials: true}
  $scope.bookmark = bookmark.query()

