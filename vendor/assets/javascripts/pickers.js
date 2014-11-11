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
