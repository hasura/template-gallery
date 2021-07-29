-- To uninstall demonstration:
-- Delete the `_attributes` schema from the expanded page on the left
-- or you may run: `DROP SCHEMA IF EXISTS _attributes` from the SQL tab to the left
--
-- Please be careful before running, as all data in the schema will be removed

-- Create Schema
CREATE SCHEMA _attributes;

-- Create Tables
CREATE TABLE _attributes.user (
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE _attributes.user_attributes (
    id serial PRIMARY KEY,
    sender_id int REFERENCES _attributes.user(id) NOT NULL,
    attribute jsonb
);

CREATE TABLE _attributes.chat (
    id serial PRIMARY KEY,
    created_at timestamp NOT NULL DEFAULT now(),
    message text NOT NULL,
    sender_id int REFERENCES _attributes.user(id) NOT NULL,
    receiver_id int REFERENCES _attributes.user(id) NOT NULL
);

-- Insert Seed Data
INSERT INTO "_attributes"."user" ("name") VALUES
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

INSERT INTO "_attributes"."user_attributes" ("sender_id", "attribute") VALUES
(10, '{"is_moderator":"true"}');

INSERT INTO "_attributes"."chat" ("sender_id", "receiver_id", "message") VALUES
(8, 1, 'Just turn around, McFly, and walk away. Are you deaf, McFly? Close the door and beat it.'),
(6, 1, 'They''re late. My experiment worked. They''re all exactly twenty-five minutes slow.'),
(6, 6, 'Well, now we gotta sneak this back into my laboratory, we''ve gotta get you home.'),
(4, 9, 'Hey, Doc, we better back up, we don''t have enough roads to get up to 88.'),
(6, 10, 'Wait a minute, wait a minute, Doc, are you telling me that you built a time machine out of a delorean.'),
(6, 6, 'Wait a minute, wait a minute, Doc, are you telling me that you built a time machine out of a delorean.'),
(8, 5, 'It''s about the future, isn''t it?'),
(2, 10, 'Yeah, you got my homework finished, McFly?'),
(1, 10, 'What''s the meaning of this.'),
(9, 8, 'I''m telling the truth, Doc, you gotta believe me.'),
(10, 8, 'Hey McFly, what do you think you''re doing.'),
(9, 10, 'Well, Marty, I''m almost eighteen-years-old, it''s not like I''ve never parked before.'),
(3, 6, 'Oh, hi , Marty. I didn''t hear you come in. Fascinating device, this video unit.'),
(10, 10, 'Hey McFly, what do you think you''re doing.'),
(6, 9, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(4, 9, 'Oh, great scott. You get the cable, I''ll throw the rope down to you.'),
(2, 2, 'Thanks a lot, kid.'),
(2, 6, 'Please note that Einstein''s clock is in complete synchronization with my control watch.'),
(1, 7, 'Um, yeah well I might have sort of ran into my parents.'),
(1, 10, 'Yeah, but I never picked a fight in my entire life.'),
(1, 5, 'Alright, c''mon, I think we''re safe.'),
(8, 5, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(10, 10, 'Einstein, hey Einstein, where''s the Doc, boy, huh? Doc'),
(2, 10, 'No no no, Doc, I just got here, okay, Jennifer''s here, we''re gonna take the new truck for a spin.'),
(5, 7, 'Well, uh, listen, uh, I really-'),
(5, 3, 'Well, uh, listen, uh, I really-'),
(8, 10, 'Wait a minute, wait a minute, Doc, are you telling me that you built a time machine out of a delorean.'),
(10, 10, 'What''s going on? Where have you been all week?'),
(4, 9, 'So tell me, Marty, how long have you been in port?'),
(7, 8, 'What''s with the life preserver?'),
(4, 3, 'What a nightmare.'),
(3, 2, 'Erased from existence.'),
(2, 3, 'What''s with the life preserver?'),
(3, 7, 'Calvin, why do you keep calling me Calvin?'),
(3, 3, 'Hey, Doc, we better back up, we don''t have enough roads to get up to 88.'),
(7, 3, 'Now, of course not, Biff, now, I wouldn''t want that to happen.'),
(5, 9, 'Hey, Doc, we better back up, we don''t have enough roads to get up to 88.'),
(2, 4, 'Alright, c''mon, I think we''re safe.'),
(5, 8, 'Um, yeah well I might have sort of ran into my parents.'),
(6, 9, 'Then how am I supposed to ever meet anybody.'),
(5, 9, 'Hey kid, what you do, jump ship?'),
(4, 5, 'Yes, yes, I''m George, George McFly, and I''m your density. I mean, I''m your destiny.'),
(9, 6, 'Right, okay, so right around 9:00 she''s gonna get very angry with me.'),
(8, 1, 'What''s that thing he''s on?'),
(8, 3, 'What''s that thing he''s on?'),
(8, 9, 'So tell me, future boy, who''s president of the United States in 1985?'),
(6, 4, 'Oh, hi , Marty. I didn''t hear you come in. Fascinating device, this video unit.'),
(2, 9, 'Einstein, hey Einstein, where''s the Doc, boy, huh? Doc'),
(4, 1, 'Alright, McFly, you''re asking for it, and now you''re gonna get it.');