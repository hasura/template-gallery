# Hasura: Template Gallery

This is the repository for the Hasura template gallery which can be loaded into the Hasura `graphql-engine` (https://github.com/hasura/graphql-engine).

---

### Templates
Each folder above contains a template project for their requisite database. Template projects contain the necessary Hasura metadata and database migrations to load into the GraphQL Engine

### Template Requests

Want to request a template for the template gallery? Feel free to raise a request in our GitHub Discussions: https://github.com/hasura/template-gallery/discussions/2 and one of our maintainers will have a look at creating it.

Found a problem with one of our templates? Always feel free to raise an issue.

### Template Format: Coming Soon

We'll be publishing a spec very soon for creating your own templates for the sample repository.

The metadata is currently generated mainly by using the `Export Metadata` from the Hasura dashboard, and migrations are created using raw SQL.

Creating self-hosted repositories for your own organization's templates is also on this feature's roadmap.

### PRs Welcome

Want to submit your own templates for the time being?

Feel free to copy off one of our existing templates to create your own template. One of our maintainers will be happy to take a look, validate the template, and help prepare it for production.