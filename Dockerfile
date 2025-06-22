FROM postgres:16-alpine

WORKDIR /var/liv/postgresql

COPY . .

ENV POSTGRES_USER=user
ENV POSTGRES_PASSWORD=pass
ENV POSTGRES_DB=postgres

COPY ./setup.sql /docker-entrypoint-initdb.d/setup.sql

EXPOSE 5432

CMD ["postgres"]