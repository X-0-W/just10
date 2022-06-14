import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["hideable"];

  toggleTargets() {
    return (this.hideableTargets[0].hidden = true ? false : true);
  }
}
