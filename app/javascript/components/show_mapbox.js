import mapboxgl from 'mapbox-gl';

const mapElement = document.getElementById('showmapbox');

const buildMap = () => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'showmapbox',
    style: 'mapbox://styles/sanjana178/ck2x9mx1o1fsi1coabdhbed7r'
  });
};

const addMarkersToMap = (showmapbox, markers) => {
  console.log(markers)
  markers.forEach((marker) => {
    // const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.lng, marker.lat ])
      // .setPopup(popup) // add this
      .addTo(showmapbox);
  });
};

const fitMapToMarkers = (showmapbox, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  showmapbox.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const showMapbox = () => {
  if (mapElement) {
    const showmapbox = buildMap();
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(showmapbox, markers);
    fitMapToMarkers(showmapbox, markers);
  }
};

export { showMapbox };
