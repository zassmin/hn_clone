$(document).ready(function() {
  $('.vote').on('click', function(e) {
    e.preventDefault();
    console.log($(this).attr('href'));
    $.ajax({
      url: $(this).attr('href'),
      type: 'POST'
    }).done(function(result) {
      $('.votes').text(result);
    });
    $(this).hide();
  });
});
