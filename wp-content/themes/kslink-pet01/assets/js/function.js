(function ($) {
  $(document).scroll(function () {
    if ($(window).scrollTop() > 100) {
      $("a#to-top").show();
    } else {
      $("a#to-top").hide();
    }
  });
})(jQuery);
