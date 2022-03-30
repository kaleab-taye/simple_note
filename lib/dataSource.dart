class DreamCard {
  String imageUrl;
  String heading;
  List<ToDo> toDos;
  DreamCard(this.imageUrl, this.heading, this.toDos) {}
}

class ToDo {
  String action;
  String frequency;
  ToDo(this.action, this.frequency) {}
}

final dreamCard = [
  DreamCard("assets/images/img0.jpg", "Workout", [
    ToDo("30 pushups", "everyday morning"),
    ToDo("30 pushups", "everyday night"),
  ]),
  DreamCard("assets/images/img1.jpg", "Collaborative Work", [
    ToDo("Update Work Progress", "everyday day"),
    ToDo("Spend Time Discussing", "twice a week"),
  ]),
  DreamCard("assets/images/img2.jpg", "Friends", [
    ToDo("Trip", "everyday month"),
    ToDo("Group Game", "everyday week"),
  ]),
  DreamCard("assets/images/img3.jpg", "Relationship", [
    ToDo("Trip", "everyday month"),
    ToDo("Dinner", "everyday night"),
  ]),
  DreamCard("assets/images/img4.jpg", "Work Habit", [
    ToDo("Spend time learning", "everyday"),
    ToDo("Review work progress", "everyday night"),
  ]),
  DreamCard("assets/images/img5.jpg", "Successful Work Rig", [
    ToDo("spend time working", "8 hours a day"),
    ToDo("Plan the next work", "everyday morning"),
  ]),
  
];
