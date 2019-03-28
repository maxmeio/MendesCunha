var map;
function initMap() {
	map = new google.maps.Map(document.getElementById('map'), {
		zoom: 18,
		center: new google.maps.LatLng(-5.791225, -35.199230),
		mapTypeId: 'styled_map'
	});

	var styledMapType = new google.maps.StyledMapType(
		[
		{
			featureType: 'landscape.natural',
			elementType: 'geometry',
			stylers: [{color: '#efefef'}]
		},
		{
			featureType: 'poi',
			elementType: 'geometry',
			stylers: [{color: '#efefef'}]
		},
		{
			featureType: 'poi',
			elementType: 'labels.text.fill',
			stylers: [{color: '#93817c'}]
		},
		{
			featureType: 'poi.park',
			elementType: 'geometry.fill',
			stylers: [{color: '#efefef'}]
		},
		{
			featureType: 'poi.park',
			elementType: 'labels.text.fill',
			stylers: [{color: '#447530'}]
		},
		{
			featureType: 'road',
			elementType: 'geometry',
			stylers: [{color: '#f4f4f4'}]
		},
		{
			featureType: 'road.arterial',
			elementType: 'geometry',
			stylers: [{color: '#fdfcf8'}]
		},
		{
			featureType: 'road.highway',
			elementType: 'geometry',
			stylers: [{color: '#dddddd'}]
		},
		{
			featureType: 'road.highway',
			elementType: 'geometry.stroke',
			stylers: [{color: '#cdcdcd'}]
		},
		{
			featureType: 'road.highway.controlled_access',
			elementType: 'geometry',
			stylers: [{color: '#cdcdcd'}]
		},
		{
			featureType: 'road.highway.controlled_access',
			elementType: 'geometry.stroke',
			stylers: [{color: '#cdcdcd'}]
		},
		{
			featureType: 'transit.line',
			elementType: 'geometry',
			stylers: [{color: '#cdcdcd'}]
		},
		{
			featureType: 'water',
			elementType: 'geometry.fill',
			stylers: [{color: '#cdcdcd'}]
		},
		{
			featureType: 'water',
			elementType: 'labels.text.fill',
			stylers: [{color: '#cdcdcd'}]
		}
	],
	{name: 'Styled Map'});

	var icons = {
		info: {
			icon: 'assets/images/pin.png'
		}
	};

	var features = [
		{
			position: new google.maps.LatLng(-5.791046, -35.199687),
      		type: 'info'
		},
        {
            position: new google.maps.LatLng(-5.791463, -35.198617),
            type: 'info'
        }
	];
	features.forEach(function(feature) {
		var marker = new google.maps.Marker({
			position: feature.position,
			icon: icons[feature.type].icon,
			map: map
		});
	});
	map.mapTypes.set('styled_map', styledMapType);
	map.setMapTypeId('styled_map');
}