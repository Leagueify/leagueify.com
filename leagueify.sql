drop table users;

create table users
( user_id varchar(256)
, user_pass varchar(256)
, email varchar(256)
, avatar varchar(256)
, taunt varchar(1000)
, last_activity datetime
);

insert into users (user_id, user_pass, email, avatar, taunt) values ('zo0o0ot', 'password', 'ross@leagueify.com', 'boo.gif', 'Where there''s data there''s a game.');
insert into users (user_id, user_pass, email, avatar, taunt) values ('matt', 'password', 'ross@leagueify.com', 'bla.jpg', 'Nice Pants');
insert into users (user_id, user_pass, email, avatar, taunt) values ('Terry', 'password', 'terry@leagueify.com', 'bla.jpg', 'Yah Right');

drop table league;

create table league
( name varchar(256)
, logo varchar(256)
, motto varchar(256)
);

insert into league values ('Snowfall Smackdown', 'snowflake.jpg', 'When it snows it blows.');
insert into league values ('Big Fish Chanmpionship', 'muskie.jpg', 'It''s got teeth');
insert into league values ('Olympics Olympics', 'rings.jpg', 'The agony of defeat.');

