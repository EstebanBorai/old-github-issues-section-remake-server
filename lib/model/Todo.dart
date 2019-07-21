import 'dart:core';

enum TodoStatus {
	notDone,
	done,
	doing
}

class Todo {
	final int id;
	final String title;
	final String description;
	final TodoStatus status;
	final DateTime createdAt;
	final DateTime updatedAt;

	Todo(this.id, this.title, this.description, this.status) :
		createdAt = DateTime.now(),
		updatedAt = DateTime.now();

	/// Constructs a Todo from a JSON object
	Todo.fromJson(Map<String, dynamic> json)
		: id = int.parse(json['id'].toString()),
			title = json['title'].toString(),
			description = json['description'].toString(),
			status = TodoStatus.values[int.parse(json['status'].toString())],
			createdAt = DateTime.tryParse(json['createdAt'].toString()),
			updatedAt = DateTime.tryParse(json['updatedAt'].toString());

	/// Returns the JSON version of the Todo object
	Map<String, dynamic> toJSON() =>
		{
			'id': id,
			'title': title,
			'description': description,
			'status': status.index,
			'createdAt': createdAt.toIso8601String(),
			'updatedAt': updatedAt.toIso8601String()
		};
}
