FROM google/dart

ENV APP_GIR_API_DATABASE_HOST github-issues-remake-db

WORKDIR /app
ADD pubspec.* /app/
RUN pub get --no-precompile
ADD . /app/
RUN pub get --offline --no-precompile

COPY .docker/entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

WORKDIR /app
EXPOSE 8888

ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["pub", "run", "aqueduct:aqueduct", "serve", "--port", "8888"]
