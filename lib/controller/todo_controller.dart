import 'package:aqueduct/aqueduct.dart';
import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
import 'package:github_issues_section_remake_server/model/Todo.dart';

class TodoController extends ResourceController {
	final _todos = [
		Todo(1, 'First Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(2, 'Second Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(3, 'Third Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(4, 'Fourth Todo', 'A nice todo', TodoStatus.doing).toJSON()
	];

	@Operation.get()
	Future<Response> getTodos() async {
		return Response.ok(_todos);
	}

	@Operation.get('id')
	Future<Response> getTodoByID(@Bind.path('id') int id) async {
		final todo = _todos.firstWhere((todo) => todo['id'] == id, orElse: () => null);

		if (todo == null) {
			return Response.notFound();
		}

		return Response.ok(todo);
	}
}
