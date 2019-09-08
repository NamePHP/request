CREATE TABLE `my_db`.`offers` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `name` VARCHAR(25) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
insert into offers (id, name) values (1, 'Glove - Cutting');
insert into offers (id, name) values (2, 'Tea - Jasmin Green');
insert into offers (id, name) values (3, 'Clams - Littleneck, Whole');
insert into offers (id, name) values (4, 'Beef Cheek Fresh');
insert into offers (id, name) values (5, 'Bread - Granary Small Pull');
insert into offers (id, name) values (6, 'Vinegar - Sherry');
insert into offers (id, name) values (7, 'White Fish - Filets');
insert into offers (id, name) values (8, 'Venison - Ground');
insert into offers (id, name) values (9, 'Wine - Red, Cabernet Sauvignon');
insert into offers (id, name) values (10, 'Roe - Flying Fish');







CREATE TABLE `my_db`.`operator` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `name` VARCHAR(25) NOT NULL , `fio` VARCHAR(35) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
insert into operator (id, name, fio) values (1, 'operator1', 'Вітренко Світлана Василівна');
insert into operator (id, name, fio) values (2, 'operator2', 'Шумар Олег Петрович');
insert into operator (id, name, fio) values (10, 'operator3', 'Візняк Катерина Сергіївна');
insert into operator (id, name, fio) values (12, 'operator4', 'Гройсман Сергій Петрович');


CREATE TABLE `my_db`.`requests` ( `id` INT(11) NOT NULL AUTO_INCREMENT , `offer_id` INT(11) NOT NULL , `operator_id` INT(11) NOT NULL , `counts` INT(11) NOT NULL , `price` DOUBLE NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;
ALTER TABLE `requests` ADD FOREIGN KEY (`offer_id`) REFERENCES `offers`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `requests` ADD FOREIGN KEY (`operator_id`) REFERENCES `operator`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
insert into requests (id, offer_id, operator_id, counts, price) values (1, 2, 1, 4, 301);
insert into requests (id, offer_id, operator_id, counts, price) values (2, 1, 2, 2, 14.20);
insert into requests (id, offer_id, operator_id, counts, price) values (3, 4, 10, 7, 200);
insert into requests (id, offer_id, operator_id, counts, price) values (4, 5, 12, 3, 50);
insert into requests (id, offer_id, operator_id, counts, price) values (5, 7, 12, 6, 10);
insert into requests (id, offer_id, operator_id, counts, price) values (6, 3, 10, 2, 52.50);
insert into requests (id, offer_id, operator_id, counts, price) values (7, 6, 10, 3, 100);
insert into requests (id, offer_id, operator_id, counts, price) values (8, 8, 4, 4, 50);
insert into requests (id, offer_id, operator_id, counts, price) values (9, 9, 1, 1, 50.50);