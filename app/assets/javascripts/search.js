$(function() {

  let search_list = $(".Eventlists");

  function appendEvent(event) {

  }

  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax ({
      type: 'GET',
      url: '/events/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(events) {
      $(".Eventlists").empty();
      if (events.length !== 0) {
        events.forEach(function(event) {
          appendEvent(event);
        });
      }
      else {
        appendErrMsgToHTML("一致する勉強会がありません");
      }
    })
  });
});