var OpenResVeiculosApp = angular.module('OpenResVeiculosApp', []);

var ready = function() {
  $('.chosen-select').chosen({
    allow_single_deselect: true,
    width: "300px",
    no_results_text: 'Nenhum resultado para'
  });
  angular.bootstrap('body', ['OpenResVeiculosApp']);
};

$(document).on('ready page:load', ready);
