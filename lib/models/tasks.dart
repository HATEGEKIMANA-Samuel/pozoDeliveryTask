List<Tasks> tasks = [
Tasks(id: "1", name: "Task 1", description: "Description 1", date: "2022-05-18", status: "pending"),
Tasks(id: "2", name: "Task 2", description: "Description 2", date: "2022-05-18", status: "pending"),
Tasks(id: "3", name: "Task 3", description: "Description 3", date: "2022-05-18", status: "pending"),
Tasks(id: "4", name: "Task 4", description: "Description 4", date: "2022-05-18", status: "pending"),
Tasks(id: "5", name: "Task 5", description: "Description 5", date: "2022-05-18", status: "pending"),
Tasks(id: "6", name: "Task 6", description: "Description 6", date: "2022-05-18", status: "pending"),
Tasks(id: "7", name: "Task 7", description: "Description 7", date: "2022-05-18", status: "pending"),
Tasks(id: "8", name: "Task 8", description: "Description 8", date: "2022-05-18", status: "completed"),
Tasks(id: "9", name: "Task 9", description: "Description 9", date: "2022-05-18", status: "completed"),
Tasks(id: "10", name: "Task 10", description: "Description 10", date: "2022-05-18", status: "completed"),
Tasks(id: "11", name: "Task 11", description: "Description 11", date: "2022-05-18", status: "completed"),
Tasks(id: "12", name: "Task 12", description: "Description 12", date: "2022-05-18", status: "completed"),
Tasks(id: "13", name: "Task 13", description: "Description 13", date: "2022-05-18", status: "overdue"),
Tasks(id: "14", name: "Task 14", description: "Description 14", date: "2022-05-18", status: "overdue"),
Tasks(id: "15", name: "Task 15", description: "Description 15", date: "2022-05-18", status: "overdue"),
];

class Tasks {
  String id;
  String name;
  String description;
  String date;
  String status;
  Tasks({this.id, this.name, this.description, this.date, this.status});
}