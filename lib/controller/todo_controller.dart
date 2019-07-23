import 'package:aqueduct/aqueduct.dart';
import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
import 'package:github_issues_section_remake_server/model/todo.dart';

class TodoController extends ResourceController {
	TodoController(this.context);
	
	final ManagedContext context;

	@Operation.get()
	Future<Response> getTodos() async {
		final todoQuery = Query<Todo>(context);
		final todos = await todoQuery.fetch();

		return Response.ok(todos);
	}

	@Operation.get('id')
	Future<Response> getTodoByID(@Bind.path('id') int id) async {
		final todoQuery = Query<Todo>(context)
			..where((t) => t.id).equalTo(id);

		final todo = await todoQuery.fetchOne();

		if (todo == null) {
			return Response.notFound();
		}

		return Response.ok(todo);
	}
}
