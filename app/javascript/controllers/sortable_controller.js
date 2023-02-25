import { Controller } from "@hotwired/stimulus"
import Sortable from 'sortablejs';
import Rails from "@rails/ujs";
// window.Rails = Rails;

// Connects to data-controller="sortable"
export default class extends Controller {
  static targets = ["list"]

  connect() {
    this.listTargets.forEach(list => {
      new Sortable(list, {
            group: 'shared',
            animation: 150,
            onEnd: this.end.bind(this)
          })
    });
  }
  end(event) {
    // 1.recuperer l'id de la carte du menu_dish, je la stocke ds une variable
    let id = event.item.dataset.id
    let dish_id = event.item.dataset.dishId
    console.log(event)

    // 2. il faut selectionner le parents de l'element
    // 3. je recupere la position "data position"*
    const data_position = event.to.dataset.posititon

    let data = new FormData()
    data.append("position", event.newIndex + 1)

    // 4. faire une requete avec fetch (url et on doit lui envoyer la position)
    // 4.1. je construis l'url( /dishes/:dish_id/menu_dishes/:id/move)
    // 4.2. je construis la requete avec fetch en incluant dans le body la position (patch)


    Rails.ajax({
      url: this.data.get("url").replace(":dish_id", dish_id).replace(":id", id),
      type: 'PATCH',
      data: data
    })
  }
}
