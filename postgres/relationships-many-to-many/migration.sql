-- To uninstall demonstration:
-- Delete the `_manytomany` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _manytomany` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _manytomany;

-- Create Tables
CREATE TABLE _manytomany.tag (
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE _manytomany.article (
    id serial PRIMARY KEY,
    title text NOT NULL,
    author_name text NOT NULL
);

CREATE TABLE _manytomany.article_tag (
    id serial PRIMARY KEY,
    article_id integer REFERENCES _manytomany.article(id) NOT NULL,
    tag_id integer REFERENCES _manytomany.tag(id) NOT NULL
);

-- Insert Seed Data
INSERT INTO "_manytomany"."tag" ("name") VALUES
('Sports'),
('Games'),
('Electronics'),
('Toys'),
('Jewelry');

INSERT INTO "_manytomany"."article" ("title", "author_name") VALUES
('Yeah, you got my homework finished, McFly?', 'Allene Graine'),
('Just say anything, George, say what ever''s natural, the first thing that comes to your mind.', 'Ferguson Du Plantier'),
('What''s with the life preserver?', 'Vito Rosetti'),
('Marty, you interacted with anybody else today, besides me?', 'Rinaldo Vany'),
('So tell me, future boy, who''s president of the United States in 1985?', 'Hillyer Summers'),
('His head''s gone, it''s like it''s been erased.', 'Amie Sturman'),
('Good, there''s somebody I''d like you to meet. Lorraine.', 'Maressa Baskeyfield'),
('So tell me, Marty, how long have you been in port?', 'Larisa Lishmund'),
('I don''t know, but I''m gonna find out.', 'Holden Cadwallader');

INSERT INTO "_manytomany"."article_tag" ("article_id", "tag_id") VALUES
(3, 5),
(4, 5),
(5, 2),
(9, 5),
(5, 3),
(9, 4),
(5, 1),
(2, 2),
(5, 4),
(2, 1),
(4, 3),
(3, 1),
(1, 5),
(6, 2),
(3, 4),
(4, 1),
(7, 4),
(9, 1),
(3, 3),
(7, 1),
(8, 2),
(1, 1),
(9, 2);