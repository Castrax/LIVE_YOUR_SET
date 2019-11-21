import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import 'mapbox-gl/dist/mapbox-gl.css';

const datepickers = flatpickr(".datepicker", {
  // dateFormat: "d/m/Y",
  minDate: "today",
});

if (document.querySelector(".datepicker")) {
  const string_start_date = document.querySelector("#start-date")
  const string_end_date = document.querySelector("#end-date")
  const price_per_day = document.querySelector("#price-per-day")
  const total = document.querySelector("#total-price")
  const reservation_days = document.querySelector("#reservation-days")

string_start_date.addEventListener("change", range =>{
  const start_date = new Date(string_start_date.value);
  string_end_date.addEventListener("change", range =>{
    const end_date = new Date(string_end_date.value);
    const start_milliseconds = start_date.getTime();
    const end_milliseconds = end_date.getTime();
    const milliseconds = end_milliseconds - start_milliseconds;
    const period = milliseconds/86400000;
    const totalcalculation = period * price_per_day.innerText
    total.innerText = totalcalculation;
    reservation_days.innerText = start_date.toDateString() + " - " + end_date.toDateString();
});
});
}


import { initMapbox } from '../plugins/init_mapbox';

initMapbox();
