// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular.min
//= require bootstrap
//= require turbolinks
//= require chosen-jquery
//= require moment.min
//= require moment/pt-br.js
//= require bootstrap-datetimepicker
//= require pickers
//= require_tree .

var ready = function() {
  $('.chosen-select').chosen({
    allow_single_deselect: true,
    width: "300px",
    no_results_text: 'Nenhum resultado para'
  });

};


$(document).ready(ready);
$(document).on('page:load', ready);
