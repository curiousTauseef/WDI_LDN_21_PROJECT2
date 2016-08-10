// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require select2
//= require_tree .

$(document).on('turbolinks:load', function() {

  console.log("js loaded")

  $(".viewMessages").animate({ scrollTop: $(document).height() }, 0);

  $('.select2').select2();

  var $users = $('.users');

  $('#search').on('keyup', function() {
    var input = this;

    $users.each(function() {
      var searchString = $ (input).val().toLowerCase();
      var textToMatch = $(this).data("searchstring").toLowerCase();

      if(textToMatch.match(searchString)) {
        $(this).show();
      }

      else {
        $(this).hide();
      }

    })
  });
});