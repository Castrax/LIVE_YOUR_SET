import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

const datepickers = flatpickr(".datepicker", {
  mode: "range",
  // dateFormat: "d/m/Y",
  minDate: "today",
});

const reservation = document.querySelector(".datepicker")
const price_per_day = document.querySelector("#price-per-day")
const total = document.querySelector("#total-price")

reservation.addEventListener("keydown", range =>{
  const datestring = range.explicitOriginalTarget.value;
  const datearray = datestring.split(" to ");
  const start_date = new Date(datearray[0]);
  const end_date = new Date(datearray[1]);
  const start_milliseconds = start_date.getTime();
  const end_milliseconds = end_date.getTime();
  const milliseconds = end_milliseconds - start_milliseconds;
  const period = milliseconds/86400000;
  const totalcalculation = period * price_per_day.innerText
  total.innerText = totalcalculation;
});
