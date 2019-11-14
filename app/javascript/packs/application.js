import "bootstrap";

$(document ).ready(function() {
  const allI = $('span')
  $.each( allI, function( i, l ){
    if (l.className == "input-group-btn") {
      $(l).remove()
    };
  });
});


import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../components/init_mapbox';

initMapbox();

import { showMapbox } from '../components/show_mapbox';

showMapbox();

import { loadDynamicBannerText } from '../components/home';
loadDynamicBannerText();





