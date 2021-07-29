-- To uninstall demonstration:
-- Delete the `_flattenmany` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _flattenmany` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _flattenmany;

-- Create Tables
CREATE TABLE _flattenmany.tag (
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE _flattenmany.article (
    id serial PRIMARY KEY,
    title text NOT NULL,
    author_name text NOT NULL
);

CREATE TABLE _flattenmany.article_tag (
    id serial PRIMARY KEY,
    article_id integer REFERENCES _flattenmany.article(id) NOT NULL,
    tag_id integer REFERENCES _flattenmany.tag(id) NOT NULL
);

-- Create Views to Flatten
CREATE VIEW _flattenmany.article_tags_view AS
  SELECT article_id, tag.*
    FROM _flattenmany.article_tag LEFT JOIN _flattenmany.tag
      ON _flattenmany.article_tag.tag_id = tag.id;

CREATE VIEW _flattenmany.tag_articles_view AS
  SELECT tag_id, article.*
    FROM _flattenmany.article_tag LEFT JOIN _flattenmany.article
      ON _flattenmany.article_tag.article_id = article.id;
      
-- Insert Seed Data
INSERT INTO "_flattenmany"."tag" ("name") VALUES
('Sports'),
('Games'),
('Electronics'),
('Toys'),
('Jewelry');

INSERT INTO "_flattenmany"."article" ("title", "author_name") VALUES
('Yeah, you got my homework finished, McFly?', 'Allene Graine'),
('Just say anything, George, say what ever''s natural, the first thing that comes to your mind.', 'Ferguson Du Plantier'),
('What''s with the life preserver?', 'Vito Rosetti'),
('Marty, you interacted with anybody else today, besides me?', 'Rinaldo Vany'),
('So tell me, future boy, who''s president of the United States in 1985?', 'Hillyer Summers'),
('His head''s gone, it''s like it''s been erased.', 'Amie Sturman'),
('Good, there''s somebody I''d like you to meet. Lorraine.', 'Maressa Baskeyfield'),
('So tell me, Marty, how long have you been in port?', 'Larisa Lishmund'),
('I don''t know, but I''m gonna find out.', 'Holden Cadwallader');

INSERT INTO "_flattenmany"."article_tag" ("article_id", "tag_id") VALUES
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