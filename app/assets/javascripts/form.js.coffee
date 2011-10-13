
$(document).ready ->
  if !$('#congress_text_address').is(':checked') and $('#address #congress_text_address').val().blank?
    $('#address').hide()
  $('.congress_radio').click ->
    if $('#congress_address_otro').is(':checked')
      $('#address').slideDown()
    else
      $('#address').slideUp()
      $('#address #congress_text_address').val('')

