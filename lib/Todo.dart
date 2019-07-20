import 'dart:core';
import 'dart:convert';

enum TodoStatus {
	notDone,
	done,
	doing
}

class Todo {
	int id;
	String title;
	String description;
	TodoStatus status;
	DateTime createdAt;
	DateTime updatedAt;
	
	Todo(int id, String title, String description, TodoStatus status) {
		this.id = id;
		this.title = title;
		this.description = description;
		this.status = status;
		this.createdAt = new DateTime.now();
		this.updatedAt = new DateTime.now();
	}

	Map<String, dynamic> toJSON() =>
		{
			'id': this.id,
			'title': this.title,
			'description': this.description,
			'status': this.status.index,
			'createdAt': this.createdAt.toIso8601String(),
			'updatedAt': this.updatedAt.toIso8601String()
		};
}
