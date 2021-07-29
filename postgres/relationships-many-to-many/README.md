# Relationships: Many-to-Many

A many-to-many relationship between two tables can be established by creating a table typically called a bridge/junction/join table and adding foreign-key constraints from it to the original tables. These are then tracked using Hasura.

In this example, we'll be creating tables for `article` and `tag`, and then a bridge table names `article_tag`.

These two tables are related via a many-to-many relationship. i.e:

- an `article` can have many `tags`
- a `tag` can have many `articles`

![ERD Diagram](https://hasura.github.io/schema-sharing/postgres/relationships-many-to-many/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/relationships-many-to-many
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/guides/data-modelling/many-to-many.html