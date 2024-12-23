// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";

//= require flatpickr
document.addEventListener('DOMContentLoaded', function() {
  flatpickr('.flatpickr-selector');
})
