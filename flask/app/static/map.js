// Render the markers for weather anomalies on Google Maps
var centre = new google.maps.LatLng(0,0);
var SF = new google.maps.LatLng(37.78,-122.41);
var markers = [];
var map;
function initialize() {
    var mapOptions = {
	zoom: 2,
	center: centre
    };
    var mapOptions_fog = {
        zoom: 4,
        center: SF
    };
   
 map1 = new google.maps.Map(document.getElementById('map-canvas1'),
			      mapOptions_fog);
 map2 = new google.maps.Map(document.getElementById('map-canvas2'),
                              mapOptions_fog);
 map3 = new google.maps.Map(document.getElementById('map-canvas3'),
                              mapOptions);
 map4 = new google.maps.Map(document.getElementById('map-canvas4'),
                              mapOptions);
 map5 = new google.maps.Map(document.getElementById('map-canvas5'),
                              mapOptions);
 map6 = new google.maps.Map(document.getElementById('map-canvas6'),
                              mapOptions);

}
function update_values() {
    $.getJSON('/realtime',
              function(data) {
                  stations = data.stations
		  var current = stations[0].date;
                  console.log(stations.length)
                  clearMarkers();
                  for (var i = 0; i < stations.length; i = i + 1) {
	              if (stations[i].rain == 1) {
                         addMarker1(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
                      if (stations[i].fog == 1) {
                         addMarker2(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
		      if (stations[i].snow == 1) {
                         addMarker3(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
                      if (stations[i].hail == 1) {
                         addMarker4(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
                      if (stations[i].thunder == 1) {
                         addMarker5(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
                      if (stations[i].tornado == 1) {
                         addMarker6(new google.maps.LatLng(stations[i].lat, stations[i].long));
                      }
		  }
            })
    window.setTimeout(update_values, 5050);
}
update_values();
//function drop(lat, lng) {
//    point  = new google.maps.LatLng(lat,lng);
//    clearMarkers();
//    addMarker(point);
//}
function addMarker1(position) {
    markers.push(new google.maps.Marker({
	position: position,
	map: map1,
    }));
}
function addMarker2(position) {
    markers.push(new google.maps.Marker({
        position: position,
        map: map2,
    }));
}

function addMarker3(position) {
    markers.push(new google.maps.Marker({
        position: position,
        map: map3,
    }));
}

function addMarker4(position) {
    markers.push(new google.maps.Marker({
        position: position,
        map: map4,
    }));
}

function addMarker5(position) {
    markers.push(new google.maps.Marker({
        position: position,
        map: map5,
    }));
}

function addMarker6(position) {
    markers.push(new google.maps.Marker({
        position: position,
        map: map6,
    }));
}

function clearMarkers() {
    for (var i = 0; i < markers.length; i++) {
	markers[i].setMap(null);
    }
    markers = [];
}
google.maps.event.addDomListener(window, 'load', initialize);
