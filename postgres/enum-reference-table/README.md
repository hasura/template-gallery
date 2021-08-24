# Enums: From Reference Table

Enum type fields are restricted to a fixed set of allowed values.

Using foreign-key references to a single-column table allows us to represents an enum using ordinary relational database concepts using Hasura.

In this example, to represent an enum we’re going to create an enum table, which for Hasura’s purposes is any table that meets the following restrictions:

1. The table must have a single-column primary key of type text. The values of this column are the legal values of the enum, and they must all be valid GraphQL enum value names.
2. Optionally, the table may have a second column, also of type text, which will be used as a description of each value in the generated GraphQL schema.
3. The table must not contain any other columns.
4. The table must contain at least 1 row.

We will then mark this table as an `Enum Table` within the GraphQL Engine.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/enum-reference-table
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/databases/postgres/schema/enums.html#enums-in-the-hasura-graphql-engine