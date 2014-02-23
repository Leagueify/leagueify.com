drop table if exists users;

create table users
( id varchar(256)
, user_pass varchar(256)
, email varchar(256)
, avatar varchar(256)
, taunt varchar(1000)
, last_activity datetime
);

insert into users (id, user_pass, email, avatar, taunt) values ('zo0o0ot', 'password', 'ross@leagueify.com', 'boo.gif', 'Where there''s data there''s a game.');
insert into users (id, user_pass, email, avatar, taunt) values ('matt', 'password', 'ross@leagueify.com', 'bla.jpg', 'Nice Pants');
insert into users (id, user_pass, email, avatar, taunt) values ('Terry', 'password', 'terry@leagueify.com', 'bla.jpg', 'Yah Right');

drop table if exists leagues;

create table leagues
( id varchar(256)
, logo varchar(256)
, motto varchar(256)
);

insert into leagues values ('Snowfall Smackdown', 'snowflake.jpg', 'When it snows it blows.');
insert into leagues values ('Big Fish Chanmpionship', 'muskie.jpg', 'It''s got teeth');
insert into leagues values ('Olympics Olympics', 'rings.jpg', 'The agony of defeat.');