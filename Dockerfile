FROM postgres:11.4

COPY .docker/ /docker-entrypoint-initdb.d/

EXPOSE 5432:5432
