import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["mosaicLine"]

  connect() {

    // let counter = 0;
    // this.mosaicLineTargets.forEach((mosaicLine) => {
    //   if (counter === 0) {
    //     let position = 0.5;
    //     setInterval(() => {
    //       mosaicLine.scrollTo(position, 0)
    //       position = position + 0.5;
    //     }, 50);
    //   } else {
    //     mosaicLine.scrollTo(mosaicLine.scrollWidth, 0);
    //     let position = mosaicLine.scrollWidth - 0.5;
    //     setInterval(() => {
    //       mosaicLine.scrollTo(position, 0)
    //       position = position - 0.5;
    //     }, 50);
    //   }
    //   ++counter;
    // });
    let positionA = 0.5;
    this.mosaicLineTargets[1].scrollTo(this.mosaicLineTargets[1].scrollWidth, 0);
    let positionB = 250;

    setInterval(() => {
      this.mosaicLineTargets[0].scrollTo(positionA, 0)
      positionA = positionA + 0.5;
      this.mosaicLineTargets[1].scrollTo(positionB, 0)
      positionB = positionB - 0.5;
      console.log(positionB);
    }, 50);

  }
}
