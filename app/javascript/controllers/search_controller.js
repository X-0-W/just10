
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "distance", "list", "filter", "submitButton" ]
  static values = {
    address: String,
  }

  fetchListings(event) {
    event.preventDefault();
    let url = `/listings?address=${this.addressValue}&distance=${this.distanceTarget.value}`;
    this.filterTargets.forEach((filter) => {
      if (filter.checked) {
        url = url + `&tag_list[]=${filter.value}`;
      }
    })
    console.log(url);
    this.#AddLoader()
    fetch(url, {
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then(data => {
        this.listTarget.outerHTML = data;
        this.submitButtonTarget.disabled = false;
      });
  }

  #AddLoader() {
    this.listTarget.classList.remove("index-cards");
    this.listTarget.classList.add("loading-results");
    this.listTarget.innerHTML = `<div class="lds-circle"><div></div></div>`;
  }
}
