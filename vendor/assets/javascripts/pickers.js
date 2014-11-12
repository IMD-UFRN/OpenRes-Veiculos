$(document).on('ready page:load', function() {
  $('.datepicker').datetimepicker({
       icons: {
          date: 'fa fa-calendar',
          time: 'fa fa-clock-o',
          up: 'fa fa-chevron-up',
          down: 'fa fa-chevron-down'
      },
      dateFormat: '%d',
      direction: 'bottom',
      pickTime: false
  })
  .on("dp.change", function(e){
    var el = $(e.currentTarget);

    console.log(el);

    var scope = angular.element(el).scope();
    scope.$apply(function(){
        scope.date_selected = moment(e.date).format("D/M/YYYY");
    })

  });
});


$(document).on('ready page:load', function() {
  $('.timepicker').datetimepicker({
       icons: {
          date: 'fa fa-calendar',
          time: 'fa fa-clock-o',
          up: 'fa fa-chevron-up',
          down: 'fa fa-chevron-down'
      },
      dateFormat: '%d',
      direction: 'bottom',
      pickDate: false,
      pickSeconds: false
  });
});
