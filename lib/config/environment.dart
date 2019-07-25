import 'dart:io';

/// Returns an map with the Environment Variables for the application instance
/// found in the current platform environment.
/// If a environment variable is not found, then use a default value for the missing
/// environment variable.
/// 
/// The following is a list of relevant Environment Variables:
/// 
/// - `DB_HOST_NAME` Host name for the database connection string,
///   may vary between Docker and Local instances.
Map<String, String> getAppEnvVars() {
	final envVars = Platform.environment;
	final Map<String, String> appEnvVars = {};
	const String databaseHostName = 'APP_GIR_API_DATABASE_HOST';

	if (envVars[databaseHostName] != '') {
		print('Found $databaseHostName environment variable');
		appEnvVars['DB_HOST_NAME'] = envVars[databaseHostName];
	} else {
		print('Not found $databaseHostName environment variable');
		appEnvVars['DB_HOST_NAME'] = 'localhost';
	}

	return appEnvVars;
}
