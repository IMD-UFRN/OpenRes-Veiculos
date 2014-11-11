var OpenResVeiculosApp = angular.module('OpenResVeiculosApp', []);

OpenResVeiculosApp.controller('CarReservationsCtrl', function ($scope, $http) {
  $scope.preview = {};

  $scope.updatePreview = function(){

    console.log($scope.selected);

    $http.get('/vehicles/'+$scope.selected+'/reservations.json')
      .success(function(data) {
        $scope.preview = data;
        console.log(data);
      })
      .error(function(data) {
        console.log('Error: ' + data);
      });
  }
})
