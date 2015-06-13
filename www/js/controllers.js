angular.module('starter.controllers', []).controller('AppCtrl', function($scope, $ionicModal, $timeout) {
  $scope.loginData = {};
  $ionicModal.fromTemplateUrl('templates/login.html', {
    scope: $scope
  }).then(function(modal) {
    $scope.modal = modal;
  });
  $scope.closeLogin = function() {
    $scope.modal.hide();
  };
  $scope.login = function() {
    $scope.modal.show();
  };
  $scope.doLogin = function() {
    console.log('Doing login', $scope.loginData);
    $timeout((function() {
      $scope.closeLogin();
    }), 1000);
  };
}).controller('PlaylistsCtrl', function($scope) {
  $scope.playlists = [
    {
      title: 'Reggae',
      id: 1
    }, {
      title: 'Chill',
      id: 2
    }, {
      title: 'Dubstep',
      id: 3
    }, {
      title: 'Indie',
      id: 4
    }, {
      title: 'Rap',
      id: 5
    }, {
      title: 'Cowbell',
      id: 6
    }
  ];
}).controller('PlaylistCtrl', function($scope, $stateParams) {}).controller('HotelCtrl', function($scope, $stateParams, $interval) {
  $scope.labels = ["Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  $scope.series = ['Price'];
  $scope.data = [[120, 132.9, 149.3, 128.6, 130.09]];
  $scope.randomize = function() {};
  $interval(function() {
    $scope.data = $scope.data.map(function(data) {
      return data.map(function(y) {
        y = y + Math.random() * 10 - 5;
        return parseInt(y);
      });
    });
  }, 2000);
});
