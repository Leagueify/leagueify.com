# mysql -f -u root --password=test leagueify < /vagrant/leagueify.sql


drop table users;

create table users
( user_id MEDIUMINT NOT NULL AUTO_INCREMENT
, user_name varchar(256)
, user_pass varchar(256)
, email varchar(256)
, avatar varchar(256)
, taunt varchar(1000)
, last_activity datetime
, PRIMARY KEY (user_id)
);

insert into users (user_id, user_name, user_pass, email, avatar, taunt) values (1, 'zo0o0ot', 'password', 'ross@leagueify.com', 'boo.gif', 'Where there''s data there''s a game.');
insert into users (user_id, user_name, user_pass, email, avatar, taunt) values (2, 'matt', 'password', 'ross@leagueify.com', 'bla.jpg', 'Nice Pants');
insert into users (user_id, user_name, user_pass, email, avatar, taunt) values (3, 'Terry', 'password', 'terry@leagueify.com', 'bla.jpg', 'Yah Right');

drop table league;

create table league
( league_id MEDIUMINT NOT NULL AUTO_INCREMENT
, name varchar(256)
, logo varchar(256)
, motto varchar(256)
, PRIMARY KEY (league_id)
);

insert into league values (1, 'Snowfall Smackdown', 'snowflake.jpg', 'When it snows it blows.');
insert into league values (2, 'Big Fish Chanmpionship', 'muskie.jpg', 'It''s got teeth');
insert into league values (3, 'Olympics Olympics', 'rings.jpg', 'The agony of defeat.');

drop table team;

create table team
( team_id MEDIUMINT NOT NULL AUTO_INCREMENT
, league_id MEDIUMINT NOT NULL
, user_id MEDIUMINT NOT NULL
, name varchar(256)
, logo varchar(256)
, motto varchar(256)
, PRIMARY KEY (team_id)
);

insert into team values (1, 1, 1, 'Andy''s Automatics', 'Skull.jpg', 'Go do it');
insert into team values (2, 1, 1, 'Goo Gone', 'default.jpg', 'Gooeuey');
insert into team values (3, 1, 1, 'Jeff Co', 'default.jpg', ' Bla');
insert into team values (4, 1, 1, 'Grass Lands', 'default.jpg', 'ASDF');



drop table player;

create table player
( player_id MEDIUMINT NOT NULL AUTO_INCREMENT
, team_id MEDIUMINT
, name varchar(256)
, PRIMARY KEY (player_id)
);

insert into player values (1, 1, 'Sheboygan');
insert into player values (2, 1, 'Marquette');
insert into player values (3, 1, 'La Crosse');
insert into player values (4, 1, 'Madison');
insert into player values (5, 1, 'Chicago');
insert into player values (6, 1, 'Superior');
