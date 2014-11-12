OpenResVeiculosApp.controller('CarReservationsCtrl', function ($scope, $http) {
  $scope.preview = {};

  $scope.date_selected = moment().format("D/M/YYYY");

  $scope.updatePreview = function(){

    $http.get('/vehicles/'+$scope.vehicle+'/reservations.json')
      .success(function(data) {
        $scope.preview = data;
        console.log(data);
      })
      .error(function(data) {
        console.log('Error: ' + data);
      });
  }

})
