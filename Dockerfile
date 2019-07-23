FROM postgres:11.4

ENV POSTGRES_USER admin
ENV POSTGRES_PASSWORD root
ENV POSTGRES_DB github_issues_remake

COPY .docker/ /docker-entrypoint-initdb.d/user-db.sh

EXPOSE 4321:4321
