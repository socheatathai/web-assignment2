CREATE TABLE category (
  cat_id int NOT NULL AUTO_INCREMENT,
  cat_name varchar(200) NOT NULL,
  PRIMARY KEY (cat_id)
);

INSERT INTO category (cat_id, cat_name) VALUES
(1, 'Slider'),
(2, 'Discount'),
(3, 'Popular'),
(4, 'Discount Slider'),
(5, 'Popular Slider'),
(6, 'All Discount Pro'),
(7, 'All Popular Pro'),
(8, 'Main Product'),
(9, 'Main Product1');

DROP TABLE IF EXISTS product;
CREATE TABLE IF NOT EXISTS product (
  pro_id int NOT NULL AUTO_INCREMENT,
  pro_name varchar(250) NOT NULL,
  cat_id int NOT NULL,
  pro_price float NOT NULL,
  pro_cal int NOT NULL,
  pro_des text NOT NULL,
  pro_dis int NOT NULL,
  pro_img text NOT NULL,
  PRIMARY KEY (pro_id)
);

INSERT INTO product (pro_id, pro_name, cat_id, pro_price, pro_cal, pro_des, pro_dis, pro_img) VALUES
(1, 'Priscilla Aguirre', 1, 2.45, 250, 'Ea odio facilis enim', 25, '65f3a7b46520a_1710466996.png'),
(2, 'Ori Decker', 1, 2.23, 250, 'Illo aut sed ducimus', 25, '65f3aa9a75cc6_1710467738.png'),
(3, 'Caldwell Combs', 1, 2.45, 450, 'Rerum in velit ipsa', 25, '65f3ab67b022e_1710467943.png'),
(4, 'Tatiana Bond', 3, 1.45, 0, 'Cumque quia laboris', 10, '65f3aba1a4633_1710468001.png'),
(5, 'Ann Wilkins', 2, 2.23, 150, 'Sapiente repellendus', 40, '65f3ac72434d5_1710468210.png'),
(6, 'Cullen Conrad', 9, 2.45, 150, 'Exercitation cupidat', 50, '65f3adab95262_1710468523.png'),
(7, 'Hilel Waters', 8, 2.99, 360, 'Ut deserunt voluptat', 35, '65f3adcb8dc7f_1710468555.jpg'),
(8, 'Laurel Hobbs', 4, 2.55, 245, 'Voluptate laborum te', 20, '65f3b068c9049_1710469224.png'),
(9, 'Vernon Wells', 6, 2.45, 160, 'Anim suscipit minim', 50, '65f3b0844c406_1710469252.png'),
(10, 'Carl Jensen', 4, 1.67, 190, 'Duis magna explicabo', 25, '65f3b0a42d20f_1710469284.png'),
(11, 'Molly Farmer', 5, 2.43, 450, 'Ut et in eum perfere', 0, '65f3b1493f6fc_1710469449.png'),
(12, 'Madonna Gutierrez', 5, 2.6, 350, 'Officia est ullam es', 0, '65f3b16b526a3_1710469483.png'),
(13, 'Hanna Juarez', 7, 2.56, 450, 'Aperiam fuga Offici', 0, '65f3b17e4a33a_1710469502.png');

DROP TABLE IF EXISTS user;
CREATE TABLE IF NOT EXISTS user (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(120) NOT NULL,
  username varchar(120) NOT NULL,
  password int NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO user (id, name, username, password) VALUES
(1, 'admin', 'admin', 123),
(2, 'chetra', 'chetra', 123);
COMMIT;