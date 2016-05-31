$(window).load(function() {
  loadScript();
});

var map;

 // $(document).on('change' ,'#parrs_select', centerMapByParroquia());
var marker;
var geocoder;
function initialize() {

  //var directionsService = new google.maps.DirectionsService();
  //var directionsDisplay = new google.maps.DirectionsRenderer();
  
  // geocoding 
  geocoder  = new google.maps.Geocoder();

  var mapOptions = {
    center: new google.maps.LatLng(-0.1859053, -78.4848484),
    zoom: 12,
    mapTypeId: google.maps.MapTypeId.NORMAL,
    panControl: true,
    scaleControl: false,
    streetViewControl: true,
    overviewMapControl: true
  };
  // initializing map
  map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);
  //directionsDisplay.setMap(map);

  /*prov_select = document.getElementById("provs_select");
  provincia = prov_select.options[prov_select.selectedIndex].text;
  cant_select = document.getElementById("cants_select");
  canton = cant_select.options[cant_select.selectedIndex].text;
  parr_select = document.getElementById("parrs_select");
  parroquia = cant_select.options[parr_select.selectedIndex].text;

  poblado_cercano = document.getElementById("atractivo_sitio_cercano").value;
  if (!poblado_cercano) poblado_cercano = "Quito, Ecuador" ;
  var request = 
  {
    origin: parroquia+","+canton+","+provincia+",Ecuador",
    destination: poblado_cercano,
    travelMode: google.maps.DirectionsTravelMode.DRIVING
  };
  directionsService.route(request, function(response, status)
  {
      if (status == google.maps.DirectionsStatus.OK)
      {
        directionsDisplay.setDirections(response);
      }
  });
 */ 
  google.maps.event.addListener(map, 'click', function(e){
    if (marker) marker.setMap(null);
    marker = createMarker(getCurrentPosition(e), map, "Atractivo");
    document.getElementById("atractivo_latitud").value = e.latLng.lat();
    document.getElementById("atractivo_longitud").value = e.latLng.lng();
  });
}
function createInfoWindow(text){
  var infowindow = new google.maps.InfoWindow({
    content: text
  });
  return infowindow;
}

function centerMapByParroquia(){
  prov_select = document.getElementById("provs_select");
  provincia = prov_select.options[prov_select.selectedIndex].text;
  cant_select = document.getElementById("cants_select");
  canton = cant_select.options[cant_select.selectedIndex].text;
  parr_select = document.getElementById("parrs_select");
  parroquia = cant_select.options[parr_select.selectedIndex].text;

  ciudad = parroquia+","+canton+","+provincia+",Ecuador";

  geocoder.geocode( { 'address': ciudad }, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
    } else {
      alert("Could not find location: " + location);
    }
  });
}

/*var parr_select = document.getElementById("parrs_select");
parr_select.addEventListener(
    'change', 
    function() {toggleSelect(this.id)},
    false
    );*/
function getCurrentPosition(e){
  var markercoords = new google.maps.LatLng(e.latLng.lat(),e.latLng.lng());
  return markercoords;
}

function createMarker(coords, map, title){
  return new google.maps.Marker({
    position: coords,
         map: map,
         title: title,
         draggable: true,
         animation: google.maps.Animation.DROP
  });
}
                  
function loadScript() {
  console.log("map loading ...");
  var script = document.createElement('script');
  script.type = 'text/javascript';
  //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    //'&v=3.14'+
    //'&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o'+
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}
