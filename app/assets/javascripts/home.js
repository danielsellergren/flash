document.addEventListener("DOMContentLoaded", function() {
  var showButton = document.getElementById('show-button');
  var hideButton = document.getElementById('hide-button');
  var refreshButton = document.getElementById('refresh-button')
  var definition = document.getElementById('definition');
  console.log(showButton);
  showButton.addEventListener('click', function(e) {
    definition.style.display = "block";
    showButton.style.display = "none";
    hideButton.style.display = "inline-block"
  }, false);
  hideButton.addEventListener('click', function(e) {
    definition.style.display = "none";
    showButton.style.display = "inline-block";
    hideButton.style.display = "none";
  }, false);
  refreshButton.addEventListener('click', function(e) {
    document.location.reload(true);
  });
});
