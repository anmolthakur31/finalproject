var MapsGoogle = {

	basic: function () {
		var map = new GMaps({
			el: '#gmaps_1',
			lat: 30.7214771,
			lng: 76.7995068,
			zoom: 10,
			zoomControl : true,
			zoomControlOpt: {
				style : 'SMALL',
				position: 'TOP_LEFT'

			},
			panControl : false,
			streetViewControl : false,
			mapTypeControl: false,
			overviewMapControl: false
			
		});
	},

	init: function () {
		this.basic();
		
	}
}




