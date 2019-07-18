import './Todo.dart';
import 'dart:convert';

String getTodosJSON() {
	Todo uno = new Todo(1, 'First Todo', 'Testing Dart', TodoStatus.notDone);
	Todo dos = new Todo(2, 'Second Todo', 'Testing Dart 2', TodoStatus.doing);

	var all = [
		uno.toJSON(),
		dos.toJSON()
	];

	return jsonEncode(all);
}
