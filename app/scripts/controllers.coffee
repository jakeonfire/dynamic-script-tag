'use strict'

### Controllers ###

app = angular.module('app.controllers', [])

app.controller 'AppCtrl', ($scope, $window) ->
  $scope.user = $window.user
