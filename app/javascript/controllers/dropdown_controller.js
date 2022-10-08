import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "dropdown" ]

  hamburger(){
    this.dropdownTarget.classList.toggle("hidden")
  }
}