import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("_Todo", [SchemaColumn("id", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("title", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("status", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("createdAt", ManagedPropertyType.datetime, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
		final List<Map<String, dynamic>> defaultTodos = [
			{
				'title': 'My first todo',
				'description': 'Testing my first todo with Dart/Aqueduct',
				'status': 1,
				'createdAt': '2019-07-22'
			},
			{
				'title': 'My second todo',
				'description': 'Another nice todo',
				'status': 0,
				'createdAt': '2019-07-22'
			},
			{
				'title': 'A third todo',
				'description': 'The third thing',
				'status': 3,
				'createdAt': '2019-07-22'
			},
			{
				'title': 'Testing with a last todo',
				'description': 'The last todo',
				'status': 0,
				'createdAt': '2019-07-22'
			},
		];

		for (final todo in defaultTodos) {
			await database.store.execute("""
				INSERT INTO _Todo (
					title,
					description,
					status,
					createdAt
				) VALUES (
					@title,
					@description,
					@status,
					@createdAt
				)
				""",
				substitutionValues: {
					'title': todo['title'],
					'description': todo['description'],
					'status': todo['status'],
					'createdAt': todo['createdAt']
				}
			);
		}
	}
}
    