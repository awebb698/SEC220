create schema Movie_Company;
use Movie_Company;
create table Movies(
    id int auto_increment primary key,
    title varchar(30),
    genre  varchar(15),
    release_year int
);
create table Directors(
    id int auto_increment primary key,
    first_name varchar(20),
    last_name varchar(20),
    movie_id int,
    foreign key (movie_id) references Movies(id)
);
create table Actors(
    id int auto_increment primary key,
    first_name varchar(20),
    last_name varchar(20)
);
create table movies_actors_association(
    id int auto_increment primary key,
    moviesId int,
    actorsId int,
    foreign key (moviesId) references Movies(id),
    foreign key (actorsId) references Actors(id)
);

INSERT INTO Movies (title, genre, release_year) VALUES ('Funny Movie', 'Comedy', 2015),
                                                       ('Hilarious Movie', 'Comedy', 2016),
                                                       ('Scary Movie', 'Horror', 2017),
                                                       ('Fight Movie', 'Action', 2016);
insert into actors (first_name, last_name) VALUES ('Jesse', 'Pinkman'),
                                                  ('Walter', 'White'),
                                                  ('Jeff', 'Goldbloom'),
                                                  ('Chris', 'Hemsworth'),
                                                  ('Morgan', 'Freeman');
insert into directors (first_name, last_name, movie_id) VALUES ('steven', 'spielberg', 3),
                                                               ('stanley', 'kubrick', 4),
                                                               ('quentin', 'taratino', 1);
insert into movies_actors_association (moviesId, actorsId) VALUES (1, 3);
insert into movies_actors_association (moviesId, actorsId) VALUES  (1, 4);
insert into movies_actors_association (moviesId, actorsId) VALUES  (2, 1);
insert into movies_actors_association (moviesId, actorsId) VALUES  (4, 2);
insert into movies_actors_association (moviesId, actorsId) VALUES  (4, 5);

select actors.first_name, actors.last_name
from actors;

select first_name, last_name
from actors
where last_name = 'spielberg';

