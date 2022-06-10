import { Controller } from "stimulus";
import { csrfToken } from "@rails/ujs";

export default class extends Controller {
  static targets = [ "button", "offers" ]

  rejectOffer(event) {
    event.preventDefault();
    const url = this.buttonTarget.href;
    fetch(url, {
      method: "PATCH",
      headers: { Accept: "text/plain", "X-CSRF-Token": csrfToken() }
    })
      .then(response => response.text())
      .then(data => this.offersTarget.outerHTML = data);
  }
}
