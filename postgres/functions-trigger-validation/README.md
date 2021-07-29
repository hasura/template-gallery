# Functions: Data Validation with Triggers

Triggers are a great way to validate data before or after the data has been added to your database.

In this example, we'll be creating a user blacklist which will work with a trigger and a function to make sure no users are added to the user table who have their emails added to the blacklist table.

**Tip:** Try creating a user with `tommy.badguy@email.com` - you'll notice the user is forbidden.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/schema-sharing/tree/main/postgres/functions-trigger-validation