create table restaurant (
    id serial primary key,
    name varchar,
    address varchar,
    category varchar
);

create table reviewer (
    id serial primary key,
    name varchar,
    email varchar,
    karma int,
    CHECK (0 <= karma AND karma <= 7)
);

create table review (
    id serial primary key,
    reviewer_id int,
    FOREIGN KEY(reviewer_id) REFERENCES reviewer (id),
    stars int,
    CHECK (1 <= stars AND stars <= 5),
    title varchar,
    review varchar,
    restaurant_id int,
    FOREIGN KEY(restaurant_id) REFERENCES restaurant(id)
);
-- inserting restaurants into the restuarnt table
INSERT INTO restaurant (name, address, category)
VALUES ('The Porter', '1156 Euclid Ave, Atlanta, GA 30307', 'Pub Fare'),
('Petit Chou', '662 Memorial Dr, Atlanta, GA 30312', 'French'),
('Kiosko', '48 Powder Springs Rd, Marietta, GA 30064', 'Columbian'),
('Buca Lupo', '753 Edgewood Ave, Atlanta, GA 30307', 'Italian'),
('Tassa', '224 Powers Ferry Rd, Marietta, GA 30067', 'Caribbean');

-- inserting reviewer info into the reviewer table
INSERT INTO reviewer (name, email, karma)
VALUES ('Carlos Morales', 'carlos.morales@gmail.com', 7),
('John Duncan', 'john.duncan@gmail.com', 5),
('Andrew Mintz', 'andrew.mintz@gmail.com', 4),
('Bruce Morales', 'bruce.morales@gmail.com', 6);

--inserting review info into the review table
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id)
VALUES (1, 5, 'Review of The Porter', 'This is a great place for beer and food', 1),
(2, 4, 'Review of Petit Chou', 'This is a great place to grab brunch', 2),
(2, 5, 'Review of Kiosko', 'This is a great place to eat paella', 3),
(1, 4, 'Review of Boca Lupo', 'This is a great place to grab italian food', 4),
(4, 5, 'Review of Tassa', 'This is a great place to eat caribbean food', 5);

--inserting some more reviews into the table
INSERT INTO review (reviewer_id, stars, title, review, restaurant_id)
VALUES (4, 3, 'Bruce Review of Kiosko', 'I wish they had more food options', 3),
(2, 5, 'My review of Boca Lupo', 'I love this place!', 4);

--Answering questions with queries--
--List all the reviews for a given restaurant given a specific restaurant ID.
select review from review where restaurant_id = 2;
--List all the reviews for a given restaurant, given a specific restaurant name.
select name, review from restaurant JOIN review ON restaurant.id = review.restaurant_id where name = 'Petit Chou';
--List all the reviews for a given reviewer, given a specific author name.
select name, review from reviewer JOIN review ON reviewer.id = review.reviewer_id where name = 'Carlos Morales';
--List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
select name, review from restaurant JOIN review ON restaurant.id = review.restaurant_id;
--Get the average stars by restaurant. The result should have the restaurant name and its average star rating
SELECT ROUND(AVG(stars), 2), name FROM review JOIN restaurant ON review.restaurant_id = restaurant.id GROUP BY restaurant.name;
--Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count
SELECT COUNT(*), name FROM review JOIN restaurant ON review.restaurant_id = restaurant.id GROUP BY restaurant.name;
--List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, 
--the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together
