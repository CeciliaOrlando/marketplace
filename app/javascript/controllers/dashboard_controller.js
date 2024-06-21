// app/javascript/controllers/dashboard_controller.js
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "academies", "courses", "reservations" ]

  displayAcademy() {
    this.academiesTarget.style.display = 'block';
    this.coursesTarget.style.display = 'none';
    this.reservationsTarget.style.display = 'none';
  }

  displayCourses() {
    this.academiesTarget.style.display = 'none';
    this.coursesTarget.style.display = 'block';
    this.reservationsTarget.style.display = 'none';
  }

  displayReservations() {
    this.academiesTarget.style.display = 'none';
    this.coursesTarget.style.display = 'none';
    this.reservationsTarget.style.display = 'block';
  }
}
