import 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
import 'package:aqueduct_test/aqueduct_test.dart';

export 'package:github_issues_section_remake_server/github_issues_section_remake_server.dart';
export 'package:aqueduct_test/aqueduct_test.dart';
export 'package:test/test.dart';
export 'package:aqueduct/aqueduct.dart';

/// A testing harness for github_issues_section_remake_server.
///
/// A harness for testing an aqueduct application. Example test file:
///
///         void main() {
///           Harness harness = Harness()..install();
///
///           test("GET /path returns 200", () async {
///             final response = await harness.agent.get("/path");
///             expectResponse(response, 200);
///           });
///         }
///
class Harness extends TestHarness<GithubIssuesSectionRemakeServerChannel> {
  @override
  Future onSetUp() async {

  }

  @override
  Future onTearDown() async {

  }
}
