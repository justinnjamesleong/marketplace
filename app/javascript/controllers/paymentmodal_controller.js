import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["popUp", "cards", "credit"];

  open() {
    this.popUpTarget.classList.toggle("modal");
    this.cardsTarget.classList.toggle("d-none");
    // this.popUpTarget.classList.remove("fade");
    console.log(this.popUpTarget.classList);
    console.log(this.cardsTarget.classList);
  }

  close() {
    // this.cardsTarget.classList.remove("d-none");
    this.popUpTarget.classList.toggle("modal");
    this.cardsTarget.classList.toggle("d-none");
  }

  topup(e) {
    e.preventDefault();
    // this.cardsTarget.classList.remove("d-none");
    console.log(this.creditTarget.value);
    // current_user.wallet_balance = this.creditTarget.value;
  }
}
