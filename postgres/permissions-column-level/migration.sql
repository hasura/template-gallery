-- To uninstall demonstration:
-- Delete the `_colpermissions` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _colpermissions` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _colpermissions;

-- Create Tables
CREATE TABLE _colpermissions.author (
    id serial PRIMARY KEY,
    name text NOT NULL,
    role text NOT NULL DEFAULT 'author'
);

CREATE TABLE _colpermissions.article (
    id serial PRIMARY KEY,
    title text NOT NULL,
    editor_notes text,
    author_id integer REFERENCES _colpermissions.author(id) NOT NULL
);

-- Insert Seed Data
INSERT INTO "_colpermissions"."author" ("name", "role") VALUES
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

INSERT INTO "_colpermissions"."article" ("author_id", "editor_notes", "title") VALUES
(2, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 'Morbi quis tortor id nulla ultrices aliquet.'),
(4, 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 'Sed vel enim sit amet nunc viverra dapibus.'),
(2, 'Aenean fermentum.', 'Duis bibendum.'),
(2, 'Proin at turpis a pede posuere nonummy.', 'Nam tristique tortor eu pede.'),
(3, 'In hac habitasse platea dictumst.', 'Sed vel enim sit amet nunc viverra dapibus.'),
(5, 'Morbi quis tortor id nulla ultrices aliquet.', 'Quisque id justo sit amet sapien dignissim vestibulum.'),
(7, 'Phasellus in felis.', 'In quis justo.'),
(1, 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.'),
(9, 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 'Etiam faucibus cursus urna.'),
(4, 'Morbi non quam nec dui luctus rutrum.', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.'),
(4, 'Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 'Nam dui.'),
(8, 'Mauris lacinia sapien quis libero.', 'Ut at dolor quis odio consequat varius.'),
(10, 'Praesent blandit lacinia erat.', 'In hac habitasse platea dictumst.'),
(2, 'Nulla ut erat id mauris vulputate elementum.', 'Quisque id justo sit amet sapien dignissim vestibulum.'),
(10, 'Ut at dolor quis odio consequat varius.', 'Nullam molestie nibh in lectus.'),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'Duis mattis egestas metus.'),
(6, 'Praesent blandit lacinia erat.', 'Aliquam erat volutpat.'),
(4, 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.'),
(3, 'Nulla mollis molestie lorem.', 'Nunc rhoncus dui vel sem.');