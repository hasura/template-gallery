# Functions: Multiple Column Text Search

Custom functions are ideal solutions for retrieving some derived data based on some custom business logic that requires user input to be calculated.

In this schema example, we'll be creating a text search function which executes a `like`-based search across several columns, returning the results.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/functions-multiple-column-search
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/databases/postgres/schema/custom-functions.html#example-text-search-functions