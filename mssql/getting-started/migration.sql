-- To uninstall demonstration:
-- Delete the `_helloworld` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _helloworld` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _helloworld;

-- Create Tables
CREATE TABLE _helloworld.author (
    id int PRIMARY KEY IDENTITY,
    name text NOT NULL
);

CREATE TABLE _helloworld.article (
    id int PRIMARY KEY IDENTITY,
    title text NOT NULL,
    rating integer DEFAULT NULL,
    author_id integer REFERENCES _helloworld.author(id) NOT NULL
);

-- Insert Seed Data
INSERT INTO "_helloworld"."author" ("name") VALUES
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

INSERT INTO "_helloworld"."article" ("author_id", "rating", "title") VALUES
(3, 3, 'Oh, hi , Marty. I didn''t hear you come in. Fascinating device, this video unit.'),
(1, 1, 'Erased from existence.'),
(6, 2, 'No no no, Doc, I just got here, okay, Jennifer''s here, we''re gonna take the new truck for a spin.'),
(2, 4, 'Do you mind if we park for a while?'),
(9, 1, 'Why am I always the last one to know about these things.'),
(4, 1, 'Hey, George, buddy, you weren''t at school, what have you been doing all day?'),
(9, 2, 'Yeah, but you''re uh, you''re so, you''re so thin.'),
(10, 5, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(10, 5, 'Well looky what we have here. No no no, you''re staying right here with me.'),
(7, 1, 'Of course I do. Just a second, let''s see if I could find it.'),
(9, 1, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(6, 3, 'Marty, you''re acting like you haven''t seen me in a week.'),
(5, 3, 'Can I go now, Mr. Strickland?'),
(9, 5, 'Yes, yes, I''m George, George McFly, and I''m your density. I mean, I''m your destiny.'),
(4, 4, 'We all make mistakes in life, children.'),
(9, 3, 'Hey, George, buddy, you weren''t at school, what have you been doing all day?'),
(3, 4, 'Uh, you mean nobody''s asked you?'),
(8, 3, 'Just turn around, McFly, and walk away. Are you deaf, McFly? Close the door and beat it.'),
(5, 1, 'His head''s gone, it''s like it''s been erased.'),
(2, 5, 'Wait a minute, what are you doing, Doc?'),
(2, 4, 'Marty, you interacted with anybody else today, besides me?'),
(4, 2, 'I''m telling the truth, Doc, you gotta believe me.'),
(4, 2, 'Yeah, but you''re uh, you''re so, you''re so thin.'),
(10, 4, 'Alright, McFly, you''re asking for it, and now you''re gonna get it.'),
(9, 3, 'And Jack Benny is secretary of the Treasury.'),
(10, 3, 'Why am I always the last one to know about these things.'),
(3, 5, 'Crazy drunk drivers.'),
(3, 1, 'Why am I always the last one to know about these things.'),
(9, 3, 'What''s that thing he''s on?'),
(5, 3, 'Um, yeah well I might have sort of ran into my parents.'),
(4, 3, 'Sam, here''s the young man you hit with your car out there. He''s alright, thank god.'),
(10, 5, 'A block passed Maple, that''s John F. Kennedy Drive.'),
(4, 1, 'Erased from existence.'),
(1, 5, 'What''s that thing he''s on?'),
(6, 3, 'Then how am I supposed to ever meet anybody.'),
(4, 2, 'You know, Doc, you left your equipment on all week.'),
(3, 5, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(5, 3, 'Mr. McFly, Mr. McFly, this just arrived, oh hi Marty. I think it''s your new book.'),
(4, 1, 'Alright, McFly, you''re asking for it, and now you''re gonna get it.'),
(1, 5, 'Oh, hi , Marty. I didn''t hear you come in. Fascinating device, this video unit.'),
(2, 2, 'Can I go now, Mr. Strickland?'),
(10, 3, 'Hey, George, buddy, you weren''t at school, what have you been doing all day?'),
(3, 1, 'Wait a minute, what are you doing, Doc?'),
(9, 1, 'I don''t know, but I''m gonna find out.'),
(6, 4, 'Well, uh, listen, uh, I really-'),
(5, 3, 'Hey kid, what you do, jump ship?'),
(1, 3, 'Yeah, but you''re uh, you''re so, you''re so thin.'),
(9, 1, 'Wait a minute, wait a minute. 1:15 in the morning?'),
(5, 4, 'Hey kid, what you do, jump ship?');