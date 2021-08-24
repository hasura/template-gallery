# Relationships: Flatten Many-to-Many

A many-to-many relationship between two tables can be established by creating a table typically called a bridge/junction/join table and adding foreign-key constraints from it to the original tables. These are then tracked using Hasura.

In this example, we'll be creating tables for `article` and `tag`, and then a bridge table names `article_tag`.

We'll then be creating a view from these relationships which flattens the bridge table to give us a unified view of the relationship without using a nested GraphQL request.

![ERD Diagram](https://hasura.github.io/template-gallery/postgres/relationships-flatten-many/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/relationships-flatten-many
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/guides/data-modelling/many-to-many.html#flattening-a-many-to-many-relationship-query