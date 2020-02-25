INSERT INTO restaurant (name, distance, stars, category, favorite_dish, takeout, last_time_you_ate_there)
VALUES ('The Porter', 10, 5, 'bar', 'muscles', 'no', 'November'),
('Petit Chou', 12, 5, 'french', 'croquette madam', 'no', 'December'),
('Mellow Mushroom', 3, 3, 'pizza', 'mushroom pizza', 'yes', 'December'),
('Buca Lupo', 8, 5, 'american italian', 'lasagna slab', 'no', 'October'),
('Superica', 4, 4, 'tex mex', 'chicken enchilladas', 'no', 'January'),
('Antico', 3, 5, 'pizza', 'capricosa', 'yes', 'February'),
('Freds Meat and Bread', 10, 5, 'sandwiches', 'philly cheesesteak', 'yes', 'January');

SELECT name FROM restaurant where stars = 5;

SELECT favorite_dish FROM restaurant where stars = 5;

SELECT id FROM restaurant where name = 'Superica';

SELECT * FROM restaurant where category = 'BBQ';

SELECT name FROM restaurant where takeout = 'yes';

SELECT name FROM restaurant where takeout = 'yes' and category = 'BBQ';

SELECT name FROM restaurant where distance <= 2;

SELECT name FROM restaurant where last_time_you_ate_there != 'February';

SELECT name FROM restaurant where last_time_you_ate_there != 'February' and stars = 5;

SELECT * FROM restaurant ORDER BY distance DESC LIMIT 2;

SELECT * FROM restaurant ORDER BY stars DESC LIMIT 2;

SELECT * FROM restaurant WHERE distance <= 2 ORDER BY stars DESC ;

SELECT COUNT(*) FROM restaurant;