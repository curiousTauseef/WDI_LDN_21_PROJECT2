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
//= require moment
//= require bootstrap-datetimepicker
//= require jquery_ujs
//= require turbolinks
//= require select2
//= require_tree .

$(document).on('turbolinks:load', function() {

  console.log("js loaded");

  $('.container').css('display', 'none');
  $('.container').fadeIn(1200);       
  $('.link').click(function() {      
    event.preventDefault();          
    $('.container').fadeOut(100, newpage);      
  });      


  function truncation(string) {
      $chars=(string.text().split(""));
      
      if($chars.length < 180) {
        return ($chars.join(""));
      }
      else {
        $str = ($chars.slice(0,179).join(""));
        return ($str+"...");
      }
    }

   $('.postPreview').each(function() {
      $newShortText = truncation($(this));
      $(this).text($newShortText);
    });

  $(".datetimepicker").datetimepicker({
    format: "YYYY-MM-DD hh:mm"
  });

  $("#error_explanation").addClass("alert alert-danger");

  $(".viewMessages").animate({ scrollTop: $(document).height() }, 0);

  if(!$('.select2').data('select2')) {
    $('.select2').select2();

    uniqueLi = {};

    $("li.select2-selection__choice").each(function () {
      var thisVal = $(this).text();

      if ( !(thisVal in uniqueLi) ) {
        uniqueLi[thisVal] = "";
      } else {
        $(this).remove();
      }
    })
  }

  var $searchArea = $('.searchArea');

  $('.searchBox').on('keyup', function() {
    var input = this;

    $searchArea.each(function() {
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