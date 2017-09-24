 
`$('.map')
  .gmap3({
	address:"Webb City, Missouri",
	zoom: 13,
	mapTypeId: google.maps.MapTypeId.HYBRID,
	mapTypeControl: true,
	mapTypeControlOptions: {
	  style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
	},
	navigationControl: true,
	scrollwheel: true,
	streetViewControl: true
  });`