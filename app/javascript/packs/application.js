import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import 'mapbox-gl/dist/mapbox-gl.css';

flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "d/m/Y",
  minDate: "today",
});

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
