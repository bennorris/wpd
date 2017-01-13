$(document).ready(function() {

  $('#newProject').on('click', function() {
    window.location.href = "/projects/new";
  })

  $('#addDaily').on('click', function() {
    var url = window.location.pathname;
    var id = url.substring(url.lastIndexOf('/') + 1);
    window.location.href = "/projects/" + id + "/dailies/new"
  })



})
