import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../components/init_mapbox';

initMapbox();

import { showMapbox } from '../components/show_mapbox';

showMapbox();

import { loadDynamicBannerText } from '../components/home';
loadDynamicBannerText();

