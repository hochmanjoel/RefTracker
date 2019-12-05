// Wait for turbolinks load event
$(document).on('turbolinks:load', () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('.alert').alert()
})
