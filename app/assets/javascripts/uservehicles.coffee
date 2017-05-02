jQuery ->
 models = $('#f2').html()
 $('#f1').change ->
  brand = $('#f1 :selected').text()
  options = $(models).filter("optgroup[label='#{brand}']").html()
  if options
   $('#f2').html(options)
  else
   $('#f2').empty()
