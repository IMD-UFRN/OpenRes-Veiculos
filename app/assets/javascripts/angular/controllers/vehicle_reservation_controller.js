OpenResVeiculosApp.controller('CarReservationsCtrl', function ($scope, $http) {
  $scope.preview = {};

  $scope.date_selected = moment().format("D/M/YYYY");

  $scope.updatePreview = function(){

    if($scope.vehicle == undefined || $scope.vehicle == 0){
      return;
    }
    
    $http.get('/vehicles/'+$scope.vehicle+'/reservations.json?date=' + $scope.date_selected)
      .success(function(data) {
        $scope.preview = data;
        console.log(data);
      })
      .error(function(data) {
        console.log('Error: ' + data);
      });
  }

})
