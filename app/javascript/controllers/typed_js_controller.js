import { Controller } from "@hotwired/stimulus"
// Don't forget to import the NPM package
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    var typed = new Typed('#typed', {
      stringsElement: '#typed-strings',
      typeSpeed: 20,
      backDelay: 7000,
      loop: true
    });
  }
}
