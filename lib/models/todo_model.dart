

class TodoModel {
  int id;
  String title;
  String description;
  bool completed;
  String priority;

  TodoModel( {
    required this.id,
    required this.title,
    required this.description,
    this.completed = false,
    this.priority = 'High'
  } );
}