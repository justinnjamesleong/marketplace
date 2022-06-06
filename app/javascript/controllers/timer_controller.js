import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const end = document.querySelector(".timer-end-time");
    // console.log("connected to stimulus timer");
    this.count(end.innerText);
  }

  // Set the date we're counting down to
  // Update the count down every 1 second
  count(end) {
    const countDownDate = new Date(end).getTime();
    const x = setInterval(function () {
      // Get today's date and time
      const now = new Date().getTime();
      // Find the distance between now and the count down date
      const distance = countDownDate - now;
      // Time calculations for days, hours, minutes and seconds
      const days = Math.floor(distance / (1000 * 60 * 60 * 24));
      const hours = Math.floor(
        (distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60)
      );
      const minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
      const seconds = Math.floor((distance % (1000 * 60)) / 1000);
      // Output the result in an element with id="demo"
      document.querySelector(
        ".timer"
      ).innerText = `${days} days ${hours}  hours ${minutes} mins ${seconds} seconds`;
      // If the count down is over, write some text
      if (distance < 0) {
        clearInterval(x);
        document.querySelector(".timer").innerText = "EXPIRED";
      }
    }, 1000);
  }
}
