-- To uninstall demonstration:
-- Delete the `_triggers` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _triggers` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _triggers;

-- Create Tables
CREATE TABLE _triggers.user (
    id serial PRIMARY KEY,
    name text NOT NULL,
    email text NOT NULL
);

CREATE TABLE _triggers.user_blacklist (
    id serial PRIMARY KEY,
    name text NOT NULL,
    email text NOT NULL
);

-- Create Validate Function
CREATE OR REPLACE FUNCTION _triggers.check_user_blacklist() RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (SELECT 1 FROM _triggers.user_blacklist WHERE email = new.email) THEN
    RAISE EXCEPTION '403: Forbidden User' USING HINT = 'User not allowed';
    RETURN NULL;
  END IF;
  RETURN new;
END
$$ LANGUAGE plpgsql;

-- Create Trigger to Run Function
CREATE TRIGGER check_user_blacklist_trigger
BEFORE INSERT OR UPDATE ON _triggers.user
FOR EACH ROW EXECUTE PROCEDURE _triggers.check_user_blacklist();

-- Insert Seed Data
INSERT INTO "_triggers"."user" ("name", "email") VALUES
('Coleman Spickett', 'coleman.spickett@email.com'),
('Gallard Dreye', 'gallard.dreye@email.com'),
('Alysa Beecker', 'alysa.beecker@email.com'),
('Kellie Owbridge', 'kellie.owbridge@email.com');

INSERT INTO "_triggers"."user_blacklist" ("name", "email") VALUES
('Tommy Badguy', 'tommy.badguy@email.com');