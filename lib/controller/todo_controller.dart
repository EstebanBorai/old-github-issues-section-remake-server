import 'package:aqueduct/aqueduct.dart';
import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
import 'package:github_issues_section_remake_server/model/Todo.dart';

class TodoController extends Controller {
	final _todos = [
		Todo(1, 'First Todo', 'A nice todo', TodoStatus.doing),
		Todo(2, 'Second Todo', 'A nice todo', TodoStatus.doing),
		Todo(3, 'Third Todo', 'A nice todo', TodoStatus.doing),
		Todo(4, 'Fourth Todo', 'A nice todo', TodoStatus.doing)
	];

	@override
	Future<RequestOrResponse> handle(Request request) async {
		return Response.ok(_todos);
	}
}
