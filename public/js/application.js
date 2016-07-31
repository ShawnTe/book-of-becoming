$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  // menuDropdown();
  createNote();
  toggleField();
});

// function menuDropdown() {
//   $('.navbar-toggle').dropdown();
// };

    

function createNote() {
  $("#new-post").on('submit', function(event) {
    event.preventDefault();
    var formData = $("#new-post").serialize()
    $.ajax ({
      url: "/posts",
      method: "post",
      data: formData

    }).done(function() {
      $('#new-post')[0].reset();
    })
  // Originally added new posts to new page    
    // }).done(function(serverResponse) {
    //   console.log(serverResponse);
    //   $("#full-post-list").append("<li>server data</li>")
    // })
  })
}

function toggleField(){
  $("#notes-tgl-btn").on('click', function(event) {
    event.preventDefault();

    $("#notes-tgl-field").toggle("post-notes-entry");

    // $("#notes-tgl-field").toggle();
    $(this).val(function(i, text){
      return text === "Hide notes" ? "Show notes" : "Hide notes";
    })
  })
}





