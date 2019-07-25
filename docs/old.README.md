
## Running the Application Locally
```bash
# from this directory to run the application
aqueduct serve
# By default, a configuration file named `config.yaml` will be used.
```

## Generate a SwaggerUI Client
```bash
aqueduct document client
```

## Running Application Tests
```bash
pub run test
```
The default configuration file used when testing is `config.src.yaml`. This file should be checked into version control. It also the template for configuration files used in deployment.

## Deploying an Application

See the documentation for [Deployment](https://aqueduct.io/docs/deploy/).

## Running Postgres Database with Docker
Build `Dockerfile`:
```bash
docker build -t github_issues_remake_db .
```

Run the builded image:
```bash
docker run -p 5432:5432 github_issues_remake_db:latest
```
## Running migrations with aqueduct
```bash
aqueduct db generate
```

## Updated database based on migration
```bash
aqueduct db upgrade --connect postgres://admin_user:root@localhost:5432/github_issues_remake
```

## Running with Docker compose
Running the project with `Docker compose` will build a run the complete server with PostgreSQL and Aqueduct.
```bash
docker-compose up --build
```

When Docker finalizes running initialization requests to `http://localhost:8888/api/v1/*` will be available.
