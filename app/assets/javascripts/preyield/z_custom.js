
// $("#f1").change(function () {
//    if ($("#f1").val() == 0) {
//      $('#f2').attr('disabled', 'disabled');
//      $('#f3').attr('disabled', 'disabled');
//      } else {
//        $('#f2').removeAttr('disabled');
//      }
// }).trigger("change");
// jQuery(function() {
//   var datepicker = $('input.datepicker');

//   if (datepicker.length > 0) {
//     datepicker.datepicker({
//       format: "mm/dd/yyyy",
//       startDate: new Date()
//     });
//   }
// });
jQuery(document).ready(function($) {  

// site preloader -- also uncomment the div in the header and the css style for #preloader
$(window).load(function(){
	$('#preloader').fadeOut('slow',function(){$(this).remove();});
});

});

 
  
  $(document).ready(function() {
   
   var docHeight = $(window).height();
   var footerHeight = $('#sticky').height();
   var footerTop = $('#sticky').position().top + footerHeight;
   
   if (footerTop < docHeight) {
    $('#sticky').css('margin-top', 10 + (docHeight - footerTop) + 'px');
   }
  });
   

  
