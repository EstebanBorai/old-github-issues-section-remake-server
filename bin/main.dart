import 'dart:io';
import 'package:github_issues_section_remake/todos.dart' as todos;

main() async {
	var server = await HttpServer.bind('127.0.0.1', 4200);
	print("Serving at ${server.address}:${server.port}");

	await for (var request in server) {
		request.response
			..headers.contentType = new ContentType("application", "json", charset: "utf-8")
			..write(todos.getTodosJSON())
			..close();
	}
}
