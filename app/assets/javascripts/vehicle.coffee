jQuery ->
 models = $('#vehicle_model_id').html()
 $('#vehicle_brand_id').change ->
  brand = $('#vehicle_brand_id :selected').text()
  options = $(models).filter("optgroup[label='#{brand}']").html()
  if options
   $('#vehicle_model_id').html(options)
  else
   $('#vehicle_model_id').empty()
