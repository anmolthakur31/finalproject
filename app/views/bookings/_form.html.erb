<%= form_for @booking, remote: true do |f| %>

  <div class="field">
      <%= f.label "Select vehicle" %><br>
      <%= f.collection_select :uservehicle_id, @user, :id, :uservehicle_name ,{prompt: 'Select Vehicle'}%>
      <span><%= link_to "Add vehicle", '#new_uservehicle_modal', 'data-toggle' => 'modal'%></span>
  </div><br>
  <div class="field">
      <%= f.label "Select Service" %><br>
      <%= f.grouped_collection_select :service_id, @bookingvehicle, :services, :vehicle_name, :id, :name ,{prompt: 'Select Service'}%>
  </div><br>
  
  <div class="field">
   <%= f.label "Select Dateslot" %><br>
   <%= f.text_field :dateslot, "data-provide" => 'datepicker', :id=>"date" ,autocomplete: "off"%>
  </div><br>

  <div class="field">
      <%= f.label "Select Timeslot" %><br>
      <%= f.text_field :timeslot, "data-provide" => 'timepicker', :id => "time",autocomplete: "off", dropdown: true %>
  </div><br>

  

  <p>
    <%= f.submit 'Submit' %>
  </p>
<% end %>

<script>
 
$(document).ready(function () {
$("#new_booking").validate({
rules: {
"booking[dateslot]": {required: true},
}
});
});
    $('#date').datepicker({
        
        format: 'dd-mm-yyyy',
        startDate: '+3d',
        endDate: '+45d',
        autoclose: true,
        daysOfWeekDisabled: "0,6"

    });
    
    $('#time').timepicker({
                minuteStep: 60,
                showInputs: true,
                disableFocus: true,
                defaultTime: '09:00',
                disabledHours: [0, 1, 2, 3, 4, 5, 6, 7, 8, 18, 19, 20, 21, 22, 23, 24]

            })
    $("#time").click(function(){
        $(".bootstrap-timepicker-widget").toggle();

    }).trigger("click");

jQuery(function() {
 var models = $('#booking_service_id').html();
 return $('#booking_uservehicle_id').change(function() {
  var brand = $('#booking_uservehicle_id :selected').text();
   var options = $(models).filter(`optgroup[label='${brand}']`).html();
  if (options) {
   return $('#booking_service_id').html(options);
  } else {
   return $('#booking_service_id').empty();
 }
 });
});
$("#booking_uservehicle_id").change(function () {
   if ($("#booking_uservehicle_id").val() == 0) {
     $('#booking_service_id').attr('disabled', 'disabled');
     } else {
       $('#booking_service_id').removeAttr('disabled');
     }
}).trigger("change");
</script><!-- 
$('#timepicker').timepicker({
        minuteStep: 1,
        showInputs: true,        
        showMeridian: true,        
}) -->
<div class="modal fade" id="new_uservehicle_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">Add new uservehicle</h4>
      </div>
      <div class="modal-body">
        <%= render 'uservehicles/form', modal: true %>
      </div>
   
    </div>
  </div>
</div>