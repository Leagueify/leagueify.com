drop table if exists users;

create table users
( id INTEGER NOT NULL AUTO_INCREMENT
, name varchar(256)
, user_pass varchar(256)
, email varchar(256)
, avatar varchar(256)
, taunt varchar(1000)
, last_activity datetime
, PRIMARY KEY (id)
);

insert into users (name, user_pass, email, avatar, taunt) values ('zo0o0ot', 'password', 'ross@leagueify.com', 'boo.gif', 'Where there''s data there''s a game.');
insert into users (name, user_pass, email, avatar, taunt) values ('matt', 'password', 'ross@leagueify.com', 'bla.jpg', 'Nice Pants');
insert into users (name, user_pass, email, avatar, taunt) values ('Terry', 'password', 'terry@leagueify.com', 'bla.jpg', 'Yah Right');

drop table if exists leagues;

create table leagues
( id INTEGER NOT NULL AUTO_INCREMENT
, name varchar(256)
, logo varchar(256)
, motto varchar(256)
, PRIMARY KEY (id)
);

insert into leagues (name, logo, motto) values ('Snowfall Smackdown', 'snowflake.jpg', 'When it snows it blows.');
insert into leagues (name, logo, motto) values ('Big Fish Chanmpionship', 'muskie.jpg', 'It''s got teeth');
insert into leagues (name, logo, motto) values ('Olympics Olympics', 'rings.jpg', 'The agony of defeat.');

drop table if exists user_leagues;

CREATE TABLE `user_leagues` (`createdAt` DATETIME NOT NULL, `updatedAt` DATETIME NOT NULL, `userId` INTEGER , `leagueId` INTEGER , PRIMARY KEY (`userId`, `leagueId`)) ENGINE=InnoDB;

insert into user_leagues values('2014-02-23 03:57:50', '2014-02-23 03:57:50', 1, 1);