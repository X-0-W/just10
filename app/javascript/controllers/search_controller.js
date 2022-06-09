// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "distance", "list" ]
  static values = {
    address: String,
  }

  fetchListings() {
    const url = `/listings?address=${this.addressValue}&distance=${this.distanceTarget.value}`
    this.listTarget.classList.remove("index-cards");
    this.listTarget.classList.add("loading-results");
    this.listTarget.innerHTML = `<div class="lds-circle"><div></div></div>`;
    fetch(url, {
      headers: { "Accept": "text/plain" }
    })
      .then(response => response.text())
      .then(data => {
        this.listTarget.outerHTML = data;
      });
  }
}
