# Functions: Accessing Session Variables

Create a function with an argument for session variables and track it using your Hasura API.

This example will look at creating a function to access your current user's ID from a custom function to demonstrate how to access your current session's variables.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/functions-session-variables
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/databases/postgres/schema/custom-functions.html#accessing-hasura-session-variables-in-custom-functions