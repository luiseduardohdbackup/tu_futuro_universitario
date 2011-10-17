`$(document).ready(function(){
  $('.calendar').datetimepicker({
    dateFormat: 'dd/mm/yy',
    ampm: true
  });
  $("a[rel=pictures]").fancybox({
    'showNavArrows' : true,
    'cyclic'        : true
  });
		$( "#accordion" ).accordion({
			autoHeight: false,
			event: "mouseover",
			navigation: true
		});
});`



