-- To uninstall demonstration:
-- Delete the `_sessionvar` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _sessionvar` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _sessionvar;

-- Create Table > this will be used as a placeholder for the result later
CREATE TABLE _sessionvar.text_result(
  result text
);

-- Function passes `hasura_session` as a JSON object to the function
-- Accesses `hasura-session` and returns a result (the `x-hasura-user-id`)
CREATE FUNCTION _sessionvar.get_session_variable(hasura_session json)
RETURNS SETOF _sessionvar.text_result AS $$
    SELECT q.* FROM (VALUES (hasura_session ->> 'x-hasura-user-id')) q
$$ LANGUAGE sql STABLE;