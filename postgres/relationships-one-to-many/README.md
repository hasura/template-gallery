# Relationships: One-to-Many

A one-to-many relationship between two tables can be established via a foreign key constraint and tracked using Hasura.

In this example, we'll be creating tables for `author` and `passport`

These two tables are related via a one-to-many relationship. i.e:

- an `author` can have many `articles`
- an `article` has one `author`

![ERD Diagram](https://hasura.github.io/schema-sharing/postgres/relationships-one-to-many/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/relationships-one-to-many
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/guides/data-modelling/one-to-many.html