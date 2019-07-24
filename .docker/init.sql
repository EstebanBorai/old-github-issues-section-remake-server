CREATE DATABASE github_issues_remake;
CREATE USER admin_user WITH createdb;
ALTER USER admin_user WITH password 'root';
GRANT all ON database github_issues_remake TO admin_user;
