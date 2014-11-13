OpenResVeiculosApp.controller('CarReservationsCtrl', function ($scope, $http, $location) {
  $scope.preview = {};

  $scope.date_selected = moment().format("D/M/YYYY");

  $("#vehicle_reservation_vehicle_id").attr("chosen", ($location.search()).vehicle_id);
  $("#vehicle_reservation_vehicle_id").trigger('chosen:updated');

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
