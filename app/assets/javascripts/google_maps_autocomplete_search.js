$(document).ready(function() {
  var treehouse_address = $('#treehouse_address_search').get(0);

  if (treehouse_address) {
    var autocomplete = new google.maps.places.Autocomplete(treehouse_address, { types: ['geocode'] });
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged0);
    google.maps.event.addDomListener(treehouse_address, 'keydown', function(e) {
      if (e.keyCode == 13) {
        e.preventDefault(); // Do not submit the form on Enter.
      }
    });
  }
});

function onPlaceChanged0() {
  var place = this.getPlace();
  var components = getAddressComponents(place);
  var array = [components.address, components.city, components.zip_code, components.country_code]
  array = array.filter(function(n){ return n != undefined })
  $('#treehouse_address_search').trigger('blur').val(array.join(", "));

}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  console.log(place.address_components)
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}