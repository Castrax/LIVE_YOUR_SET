import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import 'mapbox-gl/dist/mapbox-gl.css';

const datepickers = flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "d/m/Y",
  minDate: "today",
});

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

const reservation = document.querySelector(".datepicker")

reservation.addEventListener("change", range =>{
  console.log(range.innerText);
  // range.nextElementSibling.innerText = 'Bingo!';
});
