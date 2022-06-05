import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["items"];
  connect() {
    console.log("connected to new auction page");
  }

  select(e) {
    console.log(e);
    console.log(this.element);
  }
}
