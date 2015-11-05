// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  var options = {
   min: 10,
   max: 1000,
   value: 50
  }
  $('.datepicker').datepicker();
  $('.slider').slider(options);
});
