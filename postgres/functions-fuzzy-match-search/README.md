# Functions: Fuzzy-Match Search

Custom functions are ideal solutions for retrieving some derived data based on some custom business logic that requires user input to be calculated. This is an example of a fuzzy-match search function across multiple columns.

This example will look at a street address text search with support for misspelled queries.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/functions-fuzzy-match-search
- The schema sharing source code was derived from the following tutorial: https://www.postgresql.org/docs/9.4/ddl-constraints.html