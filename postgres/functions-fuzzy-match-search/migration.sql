-- To uninstall demonstration:
-- Delete the `_fuzzysearch` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _fuzzysearch` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Install pg_trgm
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- Create Schema
CREATE SCHEMA _fuzzysearch;

-- Create Tables
CREATE TABLE _fuzzysearch.directory (
    id serial PRIMARY KEY,
    company text NOT NULL,
    department text NOT NULL,
    name text NOT NULL
);

-- Create GIN Index
CREATE INDEX directory_gin_idx ON _fuzzysearch.directory
USING GIN ((company || ' ' || department || ' ' || name) gin_trgm_ops);

-- Create Fuzzy Search Function
CREATE FUNCTION _fuzzysearch.search(search text)
RETURNS SETOF _fuzzysearch.directory AS $$
    SELECT *
    FROM _fuzzysearch.directory
    WHERE
      search <% (company || ' ' || department || ' ' || name)
    ORDER BY
      similarity(search, (company || ' ' || department || ' ' || name)) DESC
    LIMIT 5;
$$ LANGUAGE sql STABLE;

-- Add Seed Data
INSERT INTO "_fuzzysearch"."directory" ("department", "name", "company") VALUES
('Research and Development', 'Kylie Merwe', 'Jayo'),
('Support', 'Cyndie Presslee', 'Shufflebeat'),
('Product Management', 'Gayla Headech', 'Fliptune'),
('Business Development', 'Horatia Barnwell', 'Trupe'),
('Human Resources', 'Rozalin Penman', 'Yata'),
('Human Resources', 'Charlotta Balcers', 'Meemm'),
('Accounting', 'Issi Hawtin', 'Riffpedia'),
('Human Resources', 'Stephenie Dine-Hart', 'Katz'),
('Business Development', 'Hasty Jemison', 'Trudoo'),
('Services', 'Wendye Meadus', 'Quinu'),
('Sales', 'Demetri Hinkins', 'Zooxo'),
('Legal', 'Tani Cromack', 'Topiclounge'),
('Sales', 'Opal Haswell', 'Browsedrive'),
('Product Management', 'Sharia Morphey', 'Dablist'),
('Support', 'Augustin Hutchings', 'Blognation'),
('Support', 'Pace Silverstone', 'Aivee'),
('Business Development', 'Chris MacNeilly', 'Vimbo'),
('Engineering', 'Mitzi Swales', 'Zava'),
('Legal', 'Fiona Webermann', 'Photojam'),
('Accounting', 'Lila Hurling', 'Tambee'),
('Legal', 'Urban Spendlove', 'Tavu'),
('Training', 'Vasili Rivard', 'Skinte'),
('Product Management', 'Julee Williamson', 'Pixonyx'),
('Engineering', 'Benny Rance', 'Topicware'),
('Business Development', 'Chucho Wesker', 'Lazz'),
('Legal', 'Vitoria Stannering', 'Thoughtmix'),
('Business Development', 'Etti Orwin', 'Topicblab'),
('Business Development', 'Lonnie Padgett', 'Dynazzy'),
('Marketing', 'Fallon Storror', 'Gevee'),
('Engineering', 'Rockie Plenty', 'Skaboo'),
('Support', 'Selestina O''Dougherty', 'Jamia'),
('Legal', 'Selig McGroarty', 'Blogspan'),
('Legal', 'Wyatt Skuce', 'Skidoo'),
('Sales', 'Babb Brecon', 'Flipstorm'),
('Marketing', 'Kacy Brownill', 'Vinte'),
('Services', 'Ericka Blant', 'Kwinu'),
('Business Development', 'Edward Fuzzard', 'Wikivu'),
('Business Development', 'Jacinda Tunbridge', 'Zoomdog'),
('Accounting', 'Michele Sline', 'Topicblab'),
('Product Management', 'Hali Tomovic', 'Divavu'),
('Sales', 'Walsh McChesney', 'Aivee'),
('Support', 'Thurston Ridding', 'Wikido'),
('Legal', 'Nowell Yemm', 'Centidel'),
('Training', 'Mildred Monckton', 'Gigazoom'),
('Services', 'Daffi Seint', 'Midel'),
('Research and Development', 'Madelon Marmion', 'Fivechat'),
('Sales', 'Clayton Cowterd', 'Lajo'),
('Research and Development', 'Fanny Birdfield', 'Meetz'),
('Services', 'Giselle Gooke', 'Topiczoom'),
('Accounting', 'Vincenty Spofforth', 'Leenti'),
('Research and Development', 'Rebecca Tiddeman', 'Zooveo'),
('Services', 'Mordy Beggini', 'Avamba'),
('Support', 'Brandice Gamlin', 'Abatz'),
('Sales', 'Hugibert Balaison', 'Jabberbean'),
('Product Management', 'Jeanette Matsell', 'Jaxbean'),
('Accounting', 'Willie Habershon', 'Thoughtbridge'),
('Legal', 'Raimundo Wreford', 'Tagfeed'),
('Product Management', 'Delora Enion', 'Meemm'),
('Engineering', 'Madel Dumbarton', 'Pixonyx'),
('Legal', 'Brandy Peasegood', 'Jamia'),
('Product Management', 'Dunc Salmen', 'Mybuzz'),
('Training', 'Devina Hurt', 'Yamia'),
('Accounting', 'Arch Cisar', 'Jabbersphere'),
('Accounting', 'Shannon Simonnet', 'Mynte'),
('Accounting', 'Heloise Dimitrie', 'Photolist'),
('Human Resources', 'Lars Pretley', 'Tanoodle'),
('Engineering', 'Inga Althorpe', 'Jaloo'),
('Engineering', 'Jayne Fransman', 'Skinder'),
('Sales', 'Petronella Lurcock', 'Kamba'),
('Engineering', 'Elbertina Rapps', 'Livetube'),
('Research and Development', 'Caril Atteridge', 'Thoughtbeat'),
('Services', 'Base Gourlay', 'Gigashots'),
('Services', 'Rodolfo Mannion', 'Twimbo'),
('Research and Development', 'Lona Ovesen', 'Kanoodle'),
('Services', 'June Solman', 'Yodel'),
('Services', 'Cal Metzig', 'Realmix'),
('Business Development', 'Forrester Jaggi', 'Tavu'),
('Sales', 'Cybill Colaton', 'Browsezoom'),
('Accounting', 'Mathilde Chatenet', 'Ooba'),
('Engineering', 'Row Van Geffen', 'Trudeo'),
('Marketing', 'Nikolaus Nortcliffe', 'Einti'),
('Training', 'Bren Bartos', 'Thoughtstorm'),
('Engineering', 'Marybeth Bankes', 'Youfeed'),
('Marketing', 'Mariana Martindale', 'Devpoint'),
('Business Development', 'Byrann Schmidt', 'Babbleblab'),
('Engineering', 'Kandace Sumnall', 'Skivee'),
('Legal', 'Amberly Odney', 'Eidel'),
('Business Development', 'Gradey Kener', 'Zoovu'),
('Research and Development', 'Ibbie Langer', 'Zazio'),
('Research and Development', 'Sibella Kempster', 'Thoughtsphere'),
('Engineering', 'Catlee MacClancey', 'Zoonder'),
('Business Development', 'Trenna Kill', 'Vidoo'),
('Legal', 'Meade Sayles', 'Meedoo'),
('Training', 'Tedmund Swannack', 'Voonte'),
('Marketing', 'Rosita Guido', 'Mita'),
('Marketing', 'Benton Dafydd', 'Devshare'),
('Product Management', 'Arman Lande', 'Skajo'),
('Accounting', 'Devina Finding', 'Eidel'),
('Research and Development', 'Bree Speare', 'Babbleopia'),
('Support', 'Cyrillus Geillier', 'Edgeify');