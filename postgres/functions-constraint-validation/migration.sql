-- To uninstall demonstration:
-- Delete the `_constraints` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _constraints` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _constraints;

CREATE TABLE _constraints.product (
    id serial PRIMARY KEY,
    name text,
    retail_price numeric,
    discounted_price numeric,
    currency text,
    CHECK (retail_price > 0),
    CHECK (discounted_price > 0),
    CONSTRAINT valid_discount CHECK (retail_price > discounted_price)
);

-- Insert Seed Data
INSERT INTO "_constraints"."product" ("name", "retail_price", "discounted_price", "currency") VALUES
('Eggs', '1500', '1000', 'USD'),
('Milk', '4000', '3500', 'USD'),
('Bread', '1250', '1100', 'USD');