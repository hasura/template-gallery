-- To uninstall demonstration:
-- Delete the `_enumtable` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _enumtable` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _enumtable;

-- Create Tables
CREATE TABLE _enumtable.role (
  value text PRIMARY KEY,
  comment text
);

CREATE TABLE _enumtable.users (
    id serial PRIMARY KEY,
    name text NOT NULL,
    role text REFERENCES _enumtable.role NOT NULL 
);

-- Insert Seed Data
INSERT INTO "_enumtable"."role" ("value", "comment") VALUES
('author', 'An author who writes posts.'),
('editor', 'An editor who edits and manages content.');

INSERT INTO "_enumtable"."users" ("name", "role") VALUES
('Coleman Spickett','author'),
('Gallard Dreye','author'),
('Alysa Beecker','author'),
('Kellie Owbridge','author'),
('Mischa Sabban','author'),
('Jacquenetta Devo','author'),
('Martie MacKintosh','author'),
('Babb Attree','author'),
('Mitchel Andrews','author'),
('Jodie Deschelle','editor');