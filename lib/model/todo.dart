import 'dart:core';

import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';

enum TodoStatus {
	notDone,
	done,
	doing
}

class Todo extends ManagedObject<_Todo> implements _Todo {}

class _Todo {
	@primaryKey
	int id;

	@Column()
	String title;

	@Column()
	String description;

	@Column()
	String status;

	@Column()
	DateTime createdAt;
}

	// _Todo(this.id, this.title, this.description, this.status) :
	// 	createdAt = DateTime.now(),
	// 	updatedAt = DateTime.now();

	// /// Constructs a Todo from a JSON object
	// _Todo.fromJson(Map<String, dynamic> json)
	// 	: id = int.parse(json['id'].toString()),
	// 		title = json['title'].toString(),
	// 		description = json['description'].toString(),
	// 		status = TodoStatus.values[int.parse(json['status'].toString())],
	// 		createdAt = DateTime.tryParse(json['createdAt'].toString()),
	// 		updatedAt = DateTime.tryParse(json['updatedAt'].toString());

	// /// Returns the JSON version of the Todo object
	// Map<String, dynamic> toJSON() =>
	// 	{
	// 		'id': id,
	// 		'title': title,
	// 		'description': description,
	// 		'status': status.index,
	// 		'createdAt': createdAt.toIso8601String(),
	// 		'updatedAt': updatedAt.toIso8601String()
	// 	};
