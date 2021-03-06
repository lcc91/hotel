angular.module('starter.controllers', [])
.controller 'AppCtrl', ($scope, $ionicModal, $timeout) ->
  # With the new view caching in Ionic, Controllers are only called
  # when they are recreated or on app start, instead of every page change.
  # To listen for when this page is active (for example, to refresh data),
  # listen for the $ionicView.enter event:
  #$scope.$on('$ionicView.enter', function(e) {
  #});
  # Form data for the login modal
  $scope.loginData = {}
  # Create the login modal that we will use later
  $ionicModal.fromTemplateUrl('templates/login.html', scope: $scope).then (modal) ->
    $scope.modal = modal
    return
  # Triggered in the login modal to close it

  $scope.closeLogin = ->
    $scope.modal.hide()
    return

  # Open the login modal

  $scope.login = ->
    $scope.modal.show()
    return

  # Perform the login action when the user submits the login form

  $scope.doLogin = ->
    console.log 'Doing login', $scope.loginData
    # Simulate a login delay. Remove this and replace with your login
    # code if using a login system
    $timeout (->
      $scope.closeLogin()
      return
    ), 1000
    return

  return
.controller 'PlaylistsCtrl', ($scope) ->
  $scope.playlists = [
    {
      title: 'Reggae'
      id: 1
    }
    {
      title: 'Chill'
      id: 2
    }
    {
      title: 'Dubstep'
      id: 3
    }
    {
      title: 'Indie'
      id: 4
    }
    {
      title: 'Rap'
      id: 5
    }
    {
      title: 'Cowbell'
      id: 6
    }
  ]
  return
.controller 'PlaylistCtrl', ($scope, $stateParams) ->
  return
.controller 'HotelCtrl', ($scope, $stateParams,$interval) ->
  $scope.labels = ["Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
  $scope.series = ['Price']
  $scope.data = [
    [120,132.9,149.3,128.6,130.09]
  ]
  $scope.randomize = ->

  $interval(->
    $scope.data = $scope.data.map (data) ->
      return data.map (y) ->
        y = y + Math.random() * 10 - 5;
        return parseInt(y);
    return
  ,2000)
  return
