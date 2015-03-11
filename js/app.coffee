#http://b.hatena.ne.jp/bokuweb/search/json

tanaApp = angular.module('tanaApp', ['ngResource','ngAnimate', 'ngSanitize'])

tanaApp.controller 'MainCtrl', ($scope, $resource)->
  bookmark = $resource "http://b.hatena.ne.jp/bokuweb/search/json",{},{method:'GET',isArray:false, withCredentials:true}
  $scope.bookmark = bookmark.query()

