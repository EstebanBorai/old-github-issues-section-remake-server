#!/bin/bash
pub run aqueduct db generate
pub run aqueduct db upgrade --connect postgres://admin_user:root@github-issues-remake-db:5432/github_issues_remake 

exec "$@"
