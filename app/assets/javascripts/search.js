$(function() {
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax ({
      type: 'GET',
      url: '/events/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(events) {
      console.log(events);
    })
  });
});