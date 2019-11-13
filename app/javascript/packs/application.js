import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../components/init_mapbox';

initMapbox();

import { loadDynamicBannerText } from '../components/home';
loadDynamicBannerText();

