import 'package:aqueduct/aqueduct.dart';
import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
import 'package:github_issues_section_remake_server/model/Todo.dart';

class TodoController extends Controller {
	final _todos = [
		Todo(1, 'First Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(2, 'Second Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(3, 'Third Todo', 'A nice todo', TodoStatus.doing).toJSON(),
		Todo(4, 'Fourth Todo', 'A nice todo', TodoStatus.doing).toJSON()
	];

	@override
	Future<RequestOrResponse> handle(Request request) async {
		if (request.path.variables.containsKey('id')) {
			final id = int.parse(request.path.variables['id']);
			final todo = _todos.firstWhere((todo) => todo['id'] == id);

			if (todo == null) {
				return Response.notFound();
			}

			return Response.ok(todo);
		}

		return Response.ok(_todos);
	}
}
