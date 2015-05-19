$(function() {
  $('.flash-messages .close').on('click', function(e) {
    $(this).parent().hide();
  });

  $(document).ajaxComplete(function(event, request) {
    var msg = request.getResponseHeader('X-Message-Present');
    if (msg) {
      $.get( "/flash", function( data ) {
        $('#flash_messages_container').prepend(data);
        $('.flash-messages .close').on('click', function(e) {
          $(this).parent().hide();
        });
      });
    }
  });
});
