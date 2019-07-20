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

	String toJSON() =>
		// FIXME: encoding to JSON
		JsonEncoder.withIndent('2', 
			{
				'id': id,
				'title': title,
				'description': description,
				'status': status.index,
				'createdAt': createdAt.toIso8601String(),
				'updatedAt': updatedAt.toIso8601String()
			}
		).convert(this);
}
