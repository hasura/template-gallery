# Permissions: Extensible Attribute Permissions

Attribute-based permissions are a powerful way to be able to be able to model user permissions.

In this example, we'll be creating a granting a user special moderator permissions (ability to see and edit all chats) based on an JSONB entry found in a `user_attributes` table.

**Note:** To test this user role, try entering a `x-hasura-user-id` entry when using your GraphiQL editor in the API tab.

![ERD Diagram](https://hasura.github.io/schema-sharing/postgres/permissions-extensible-attributes-jsonb/diagram.png)

-----
- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/permissions-extensible-attributes-jsonb
- The schema sharing source code was derived from the following tutorial: https://hasura.io/docs/latest/graphql/core/auth/authorization