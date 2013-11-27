$(document).ready(function() {
  $.each($('.menubox'), function(index, elem) {
    $(elem).on("click", function(event) { window.location = elem.children[1].href; });
  });
});