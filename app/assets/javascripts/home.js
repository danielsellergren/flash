// Hide/show definition
$(document).ready(function() {

  // Variables
  $showButton = $('#show-button');
  $hideButton = $('#hide-button');
  $refreshButton = $('#refresh-button');
  $definition = $('#definition');

  // Show button
  $showButton.on('click', function(e) {
    $definition.show();
    $showButton.hide();
    $hideButton.show();
  });

  // Hide button
  $hideButton.on('click', function(e) {
    $definition.hide();
    $showButton.show();
    $hideButton.hide();
  });

  // Refresh button
  $refreshButton.on('click', function(e) {
    document.location.reload(true);
  });
});
