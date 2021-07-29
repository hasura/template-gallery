# Views: Group-By and Aggregate

Views can be used to expose the results of a custom query as a virtual table.

Sometimes we might want to fetch some data derived by aggregating (avg, min, max, etc.) over a group of rows in a table.

This view will fetch the average article rating for each author across two tables.

![ERD Diagram](https://hasura.github.io/schema-sharing/postgres/views-group-aggregate/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/views-group-aggregate
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/databases/postgres/schema/views.html#example-group-by-and-then-aggregate