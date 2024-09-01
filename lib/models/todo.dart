class Todo{
  Todo({required this.title, required this.dataTime});

  Todo.fromJson(Map<String, dynamic> json)
    : title = json['title'],
      dataTime = DateTime.parse(json['datetime']);


  String title;
  DateTime dataTime;

  Map<String, dynamic> toJson() {
    return{
      'title': title,
      'datetime': dataTime.toIso8601String(),
    };
  }
}