FROM postgres:16-alpine

WORKDIR /var/liv/postgresql

COPY . .

COPY ./setup.sql /docker-entrypoint-initdb.d/setup.sql

EXPOSE 5432

CMD ["postgres"]