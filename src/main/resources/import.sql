INSERT INTO shoe (id, name, description, price, count, imageurl1, imageurl2) VALUES ('12659320', 'Roxbury', 'Suede drivers provide effortless style and comfort. Our Roxbury features a metal ornament and pebbled soles for a coastal cool vibe.', 120.0, 10, '/catalogue/images/shoes/roxbury_yellow_700-001-046_alt2_sq_nt_3200x3200.jpg', '/catalogue/images/shoes/roxbury_yellow_700-001-046_main_sq_gy_3200x3200.jpg');
INSERT INTO shoe (id, name, description, price, count, imageurl1, imageurl2) VALUES ('12648759', 'Agroredda', 'Waterproof boots; Round toe; Laces closure', 150.0, 20, '/catalogue/images/shoes/agroredda_brown_220-001-043_main_sq_gy_1600x1600.jpg', '/catalogue/images/shoes/agroredda_brown_220-001-043_alt2_sq_nt_1600x1600.jpg');
INSERT INTO shoe (id, name, description, price, count, imageurl1, imageurl2) VALUES ('12649298', 'Theodoric', 'Comfort-minded construction defines a smart sneaker shaped from with knit fabrics.', 75.0, 30, '/catalogue/images/shoes/theodoric_multi_969-002-043_main_sq_gy_1600x1600.jpg', '/catalogue/images/shoes/theodoric_multi_969-002-043_alt2_sq_nt_1600x1600.jpg');
INSERT INTO shoe (id, name, description, price, count, imageurl1, imageurl2) VALUES ('12651277', 'Brandford', 'Cue the compliments. This derby dress shoe is made to impress with a stacked heel and fine finish.', 110.0, 25, '/catalogue/images/shoes/brandford_brown_220-001-043_main_sq_gy_1600x1600.jpg', '/catalogue/images/shoes/brandford_brown_220-001-043_alt3_sq_nt_1600x1600.jpg');
INSERT INTO shoe (id, name, description, price, count, imageurl1, imageurl2) VALUES ('12653586', 'Erez', 'Finely textured suede defines our Erez loafer featuring a rubber sole for exceptional comfort.', 125.0, 50, '/catalogue/images/shoes/erez_blue_410-001-046_main_sq_gy_1600x1600.jpg', '/catalogue/images/shoes/erez_navy_1080x1080.jpg');

INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'boots');       --1
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'sandals');     --2
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'drivers');     --3
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'casual');      --4
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'sneakers');    --5
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'loafers');     --6
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'dress');       --7
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'monk straps'); --8
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'oxfords');     --9
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'Espadrilles'); --10
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'brown');       --11
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'black');       --12
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'blue');        --13
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'beige');       --14
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'yellow');      --15
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'multi');       --16
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'footware');    --17
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'cognac');      --18
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'lace-ups');    --19
INSERT INTO tag (id, name) VALUES (nextval('hibernate_sequence'), 'navy');        --20

INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12659320', '15');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12659320', '17');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12659320', '3');

INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12648759', '1');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12648759', '17');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12648759', '11');

INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12649298', '13');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12649298', '17');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12649298', '5');

INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12651277', '18');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12651277', '17');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12651277', '19');

INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12653586', '6');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12653586', '17');
INSERT INTO shoe_tag (shoe_id, tag_id) VALUES ('12653586', '20');