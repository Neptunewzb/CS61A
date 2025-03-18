-- create table
CREATE TABLE animals (
    kind VARCHAR(20),
    legs INT,
    weight INT
);

-- Insert data
INSERT INTO animals (kind, legs, weight)
VALUES 
    ('dog', 4, 20),
    ('cat', 4, 10),
    ('ferret', 4, 10),
    ('parrot', 2, 6),
    ('penguin', 2, 10),
    ('t-rex', 2, 12000);

-- look for max(legs)
SELECT MAX(legs) FROM animals;
