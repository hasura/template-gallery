# Permissions: Row-Level Permissions (Basic)

Row-level permissions can be set based on a user's role or any session variables.

In this example, we'll be creating a permission structure where user's will only be able to view their sent chats, or chats where they are the recipient of.

**Note:** To test this user role, try entering a `x-hasura-user-id` entry when using your GraphiQL editor in the API tab.

![ERD Diagram](https://hasura.github.io/template-gallery/postgres/permissions-row-level-basic/diagram.png)

-----
- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/permissions-row-level-basic
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/auth/authorization/roles-variables.html