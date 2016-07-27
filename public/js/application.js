$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  createNote();
  toggleField();
});

function createNote() {
  $("#create-post").on('submit', function(event) {
    console.log($(this));
    console.log(event);
    event.preventDefault();
    var formData = $('create-post').serialize()
    $.ajax ({
      url: "/posts",
      method: "post",
      data: formData
    }).done(function() {
      console.log(serverResponse);
      $("#full-post-list").append("<li>server data</li>")
    })
  })
}

function toggleField(){
  $("#notes-tgl-btn").on('click', function(event) {
    event.preventDefault();

    $("#notes-tgl-field").toggle();
    $(this).val(function(i, text){
      return text === "Show notes" ? "Hide notes" : "Show notes";
    })
  })
}




