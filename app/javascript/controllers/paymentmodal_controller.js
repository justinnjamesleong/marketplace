import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["popUp", "cards", "credit"];

  opentopup() {
    // default is item-cards-list
    this.cardsTarget.classList.add("d-none");
    this.popUpTarget.classList.toggle("modal");
    this.popUpTarget.classList.remove("d-none");
    // this.popUpTarget.classList.remove("fade");
    console.log(this.popUpTarget.classList);
    console.log(this.cardsTarget.classList);
  }

  opencreation() {
    this.cardsTarget.classList.toggle("d-none");
    this.popUpTarget.classList.add("d-none");
  }

  openauction() {}

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
