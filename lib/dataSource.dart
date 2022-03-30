class DreamCard {
  String imageUrl;
  String heading;
  List<ToDo> toDos;
  DreamCard(this.imageUrl, this.heading, this.toDos) {}
}

class ToDo {
  String action;
  String frequency;
  int forHowLong;
  ToDo(this.action, this.frequency, this.forHowLong) {}
}

final dreamCard = [
  DreamCard("assets/images/img0.jpg", "Workout", [
    ToDo("30 pushups", "everyday morning",4),
    ToDo("30 pushups", "everyday night",5),
  ]),
  DreamCard("assets/images/img1.jpg", "Collaborative Work", [
    ToDo("Update Work Progress", "everyday day",5),
    ToDo("Spend Time Discussing", "twice a week",5),
  ]),
  DreamCard("assets/images/img2.jpg", "Friends", [
    ToDo("Trip", "everyday month",5),
    ToDo("Group Game", "everyday week",5),
  ]),
  DreamCard("assets/images/img3.jpg", "Relationship", [
    ToDo("Trip", "everyday month",5),
    ToDo("Dinner", "everyday night",5),
  ]),
  DreamCard("assets/images/img4.jpg", "Work Habit", [
    ToDo("Spend time learning", "everyday",5),
    ToDo("Review work progress", "everyday night",5),
  ]),
  DreamCard("assets/images/img5.jpg", "Successful Work Rig", [
    ToDo("spend time working", "8 hours a day",5),
    ToDo("Plan the next work", "everyday morning",5),
  ]),
];
