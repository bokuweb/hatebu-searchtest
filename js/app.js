// Generated by CoffeeScript 1.8.0
(function() {
  var tanaApp;

  tanaApp = angular.module('tanaApp', ['ngResource', 'ngAnimate', 'ngSanitize']);

  tanaApp.controller('MainCtrl', function($scope, $resource) {
    var bookmark;
    bookmark = $resource("http://b.hatena.ne.jp/bokuweb/search/json", {}, {
      method: 'GET',
      isArray: false,
      withCredentials: true
    });
    return $scope.bookmark = bookmark.query();
  });

}).call(this);