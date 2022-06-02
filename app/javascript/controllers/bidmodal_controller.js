import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["popUp", "cards", "bid_amount"];

  connect() {
    console.log("You are connected to the auction page.");
  }
}
