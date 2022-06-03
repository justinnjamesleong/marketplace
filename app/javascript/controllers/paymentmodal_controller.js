import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = [
    "popUp",
    "auctioncards",
    "credit",
    "listcards",
    "newcreation",
    "watchlist"
  ];

  connect() {
    this.listcardsTarget.classList.add("d-none");
    this.newcreationTarget.classList.add("d-none");
    this.watchlistTarget.classList.add("d-none");
  }

  opentopup() {
    // default is item-cards-list
    this.popUpTarget.classList.remove("d-none");
    this.popUpTarget.classList.toggle("modal");
    this.auctioncardsTarget.classList.add("d-none");
    this.listcardsTarget.classList.add("d-none");
    this.newcreationTarget.classList.add("d-none");
    this.watchlistTarget.classList.add("d-none");
  }

  opencreation() {
    this.listcardsTarget.classList.toggle("d-none");
    this.newcreationTarget.classList.add("d-none");
    this.auctioncardsTarget.classList.add("d-none");
    this.popUpTarget.classList.add("d-none");
    this.watchlistTarget.classList.add("d-none");
  }

  newcreation() {
    this.newcreationTarget.classList.toggle("d-none");
    this.listcardsTarget.classList.add("d-none");
    this.auctioncardsTarget.classList.add("d-none");
    this.popUpTarget.classList.add("d-none");
    this.watchlistTarget.classList.add("d-none");
  }

  openauction() {
    this.auctioncardsTarget.classList.toggle("d-none");
    this.listcardsTarget.classList.add("d-none");
    this.popUpTarget.classList.add("d-none");
    this.newcreationTarget.classList.add("d-none");
    this.watchlistTarget.classList.add("d-none");
  }

  openwatchlist() {
    this.watchlistTarget.classList.toggle("d-none");
    this.listcardsTarget.classList.add("d-none");
    this.popUpTarget.classList.add("d-none");
    this.newcreationTarget.classList.add("d-none");
    this.auctioncardsTarget.classList.add("d-none")
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
