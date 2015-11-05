// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(document).ready(function() {
  var options = {
   min: 10,
   max: 1000,
   value: 50
  }
  $('.datepicker').datepicker({ format: "dd/mm/yyyy" });

  $(".datepicker.update-link").on("change", function() {
    $.post("/spaces/update_dates", { name: $(this).attr("name"), value: $(this).val() });
  });

  $('.slider').slider(options);
  $('.bxslider').bxSlider();
});
