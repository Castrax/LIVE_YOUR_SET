import "bootstrap";
import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

const datepickers = flatpickr(".datepicker", {
  mode: "range",
  dateFormat: "d/m/Y",
  minDate: "today",
});

const reservation = document.querySelector(".datepicker")

reservation.addEventListener("change", range =>{
  console.log(range.innerText);
  // range.nextElementSibling.innerText = 'Bingo!';
});

console.log(reservation);
