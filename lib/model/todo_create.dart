class Todo {
  final String id;
  final String title;
  final String description;
  final String category;
  final DateTime dateTime;

  Todo(
      {required this.title,
      required this.description,
      required this.category,
      required this.dateTime,
      required this.id});
}
