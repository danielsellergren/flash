document.addEventListener("DOMContentLoaded", function() {
  var showButton = document.getElementById('show-button');
  var definition = document.getElementById('definition');
  console.log(showButton);
  showButton.addEventListener('click', function(e) {
    definition.style.display = "block";
    showButton.style.display = "none";
  }, false);
});
