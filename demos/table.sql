CREATE TABLE cities (
    latitude INT,
    longitude INT,
    name VARCHAR(255)
);

INSERT INTO cities (latitude, longitude, name)
VALUES 
    (38, 122, 'Berkeley'),
    (42, 71, 'Cambridge'),
    (45, 93, 'Minneapolis'),
    (33, 117, 'San Diego'),
    (26, 80, 'Miami'),
    (90, 0, 'North Pole');

create table cold AS
    select name
    from cities
    where latitude >=43;

create table distance AS
    select a.name as first, b.name as second,
        60*(b.latitude-a.latitude) as distance
    from cities as a, cities as b;

create table phrase as
    select "hello, world" as s;
select substr(s,4,2) from phrase;

create table nouns as
    select "dog" as phrase union
    select "cat" union
    select "bird";

create table ands AS
    select subject.phrase || " and " || object.phrase as phrase
    from nouns as subject, nouns as object
    where subject.phrase != object.phrase;

select subject.phrase || " chased " || object.phrase 
from ands as subject, ands as object
where subject.phrase != object.phrase;