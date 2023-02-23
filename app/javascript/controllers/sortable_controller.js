import { Controller } from "@hotwired/stimulus"
import Sortable from 'sortablejs';

// Connects to data-controller="sortable"
export default class extends Controller {
  static targets = ["list"]

  connect() {
    this.listTargets.forEach(list => {
      new Sortable(list, {
            group: 'shared',
            animation: 150
            // onEnd: this.end.bind(this)
          })
    });
  }
  // end(event) {
  //   let id = event.item.dataset.id
  //   let data = new FormData()
  //   data.append("position", event.newIndex + 1)
  // }
}
