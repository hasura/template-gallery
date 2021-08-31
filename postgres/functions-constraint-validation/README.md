# Functions: Input Validation with Constraints

Constraints are a great way to validate that the data being added to your database fits a specific format, or some specific business logic.

In this example, we'll be looking at a simple retail schema, where we are validating the price fields, and the business logic that the discounted price is less than the retail price of the item.

-----

- This schema is installable through your **Hasura Console**
- The schema sharing source code is available: https://github.com/hasura/template-gallery/tree/main/postgres/functions-constraint-validation
- The schema sharing source code was derived from the knowledge base: https://www.postgresql.org/docs/9.4/ddl-constraints.html