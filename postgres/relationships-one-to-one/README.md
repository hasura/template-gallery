# Relationships: One-to-One

A relationship from one table/view to another can be created by defining a link between a column of the table/view to a column of the other table/view.

A one-to-one relationship between two tables can be established via a unique foreign key constraint and tracked using Hasura.

In this example, we'll be creating tables for `owner` and `passport`

These two tables are related via a one-to-one relationship. i.e.:

- an `owner` can have one `passport_info`
- a `passport_info` has one `owner` 

![ERD Diagram](https://hasura.github.io/template-gallery/postgres/relationships-one-to-one/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/relationships-one-to-one
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/guides/data-modelling/one-to-one.html