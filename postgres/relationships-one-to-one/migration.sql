-- To uninstall demonstration:
-- Delete the `_onetoone` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _onetoone` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _onetoone;

-- Create Tables
CREATE TABLE _onetoone.owner (
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE _onetoone.passport_info (
    id serial PRIMARY KEY,
    passport_number text NOT NULL UNIQUE,
    owner_id integer REFERENCES _onetoone.owner(id) NOT NULL
);

-- Insert Seed Data
INSERT INTO "_onetoone"."owner" ("name") VALUES
('Coleman Spickett'),
('Gallard Dreye'),
('Alysa Beecker'),
('Kellie Owbridge'),
('Mischa Sabban'),
('Jacquenetta Devo'),
('Martie MacKintosh'),
('Babb Attree'),
('Mitchel Andrews'),
('Jodie Deschelle');

INSERT INTO "_onetoone"."passport_info" ("passport_number", "owner_id") VALUES
('553221', 1),
('839016', 2),
('426944', 3),
('434000', 4),
('579107', 5),
('115845', 6),
('382786', 7),
('719628', 8),
('809621', 9),
('161228', 10);