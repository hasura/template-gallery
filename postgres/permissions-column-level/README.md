# Permissions: Column-Level Permissions

Column-level permissions determine access to columns that are accessible by the user's role.

In this example, the role `author` role is restricted from seeing a hidden `editor_notes` column in the database.

**Note:** To test this user role, try entering a `x-hasura-user-role` entry when using your GraphiQL editor in the API tab.

![ERD Diagram](https://hasura.github.io/template-gallery/postgres/permissions-column-level/diagram.png)

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/permissions-column-level
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/auth/authorization/permission-rules.html#column-level-permissions