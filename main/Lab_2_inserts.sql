START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (1, 'Louie\'s Store', 'louiestore@gmail.com', 'music store');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (2, 'MagMart', 'magmartco@gmail.com', 'product shop');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (3, 'Historical Museum', 'historymuseum@mail.com', 'international historical museum');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (4, 'Easy Clean', 'ecpartners@email.su', 'hosuhold store');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (5, 'Super Store', 'store@gmail.com', 'universal shop');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (6, 'Shop\'in', 'shopping@email.su', 'mall');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (7, 'Big Mall', 'ourmall@mail.com', 'mall');
INSERT INTO `lab2`.`clients` (`id`, `name`, `email`, `details`) VALUES (8, 'Victoria', 'victoriashop@gmail.com', 'prosuct shop');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`employees`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`employees` (`id`, `name`) VALUES (1, 'Victor');
INSERT INTO `lab2`.`employees` (`id`, `name`) VALUES (2, 'Belly');
INSERT INTO `lab2`.`employees` (`id`, `name`) VALUES (3, 'Richard');
INSERT INTO `lab2`.`employees` (`id`, `name`) VALUES (4, 'Maximus');
INSERT INTO `lab2`.`employees` (`id`, `name`) VALUES (5, 'Gregory');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`contracts`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (1, '2024.02.12', 1, 1);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (2, '2023.11.10', 3, 2);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (3, '2024.03.19', 5, 1);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (4, '2023.03.25', 2, 3);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (5, '2024.06.13', 4, 4);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (6, '2023.05.09', 1, 1);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (7, '2024.01.21', 7, 5);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (8, '2023.01.28', 8, 2);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (9, '2023.02.07', 3, 4);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (10, '2023.07.09', 6, 3);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (11, '2023.08.09', 2, 3);
INSERT INTO `lab2`.`contracts` (`id`, `date`, `clients_id`, `employees_id`) VALUES (12, '2023.10.09', 1, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`order_status`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`order_status` (`id`, `status`) VALUES (1, 'opened');
INSERT INTO `lab2`.`order_status` (`id`, `status`) VALUES (2, 'process');
INSERT INTO `lab2`.`order_status` (`id`, `status`) VALUES (3, 'finished');
INSERT INTO `lab2`.`order_status` (`id`, `status`) VALUES (4, 'expiered');
INSERT INTO `lab2`.`order_status` (`id`, `status`) VALUES (5, 'closed');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`orders`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (1, '2024.02.13', '2024.02.21', 1, 1, 1);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (2, '2023.03.29', '2023.04.04', 2, 2, 2);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (3, '2023.03.17', '2023.03.30', 3, 3, 1);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (4, '2023.05.15', '2023.05.27', 1, 2, 4);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (5, '2024.06.14', '2024.06.27', 4, 5, 5);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (6, '2023.05.15', '2023.05.20', 2, 2, 2);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (7, '2023.06.01', '2023.06.06', 2, 3, 3);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (8, '2024.03.25', '2024.03.28', 5, 1, 1);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (9, '2024.02.09', '2024.02.28', 7, 4, 2);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (10, '2023.07.09', '2023.07.12', 6, 2, 3);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (11, '2023.01.30', '2023.02.18', 8, 1, 3);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (12, '2024.02.25', '2024.03.08', 2, 1, 1);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (13, '2024.02.09', '2024.02.28', 2, 4, 5);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (14, '2024.03.09', '2024.04.07', 2, 2, 2);
INSERT INTO `lab2`.`orders` (`id`, `date_start`, `date_finish`, `contracts_id`, `employees_id`, `order_status_id`) VALUES (15, '2023.11.30', '2024.01.01', 2, 1, 3);



COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`products`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (1, 0010, 'souvenir 1');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (2, 0011, 'souvenir 2');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (3, 0012, 'souvenir 3');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (4, 0013, 'souvenir 4');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (5, 0023, 'art 3');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (6, 0025, 'art 5');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (7, 0026, 'art 6');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (8, 0020, 'art 0');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (9, 0100, 'plate 0');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (10, 0200, 'board');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (11, 0101, 'plate 1');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (12, 0102, 'plate 2');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (13, 0103, 'plate 3');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (14, 1302, 'pink hat');
INSERT INTO `lab2`.`products` (`id`, `vencode`, `name`) VALUES (15, 6420, 'bicycle');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`suppliers`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (1, 'Tableware Factory');
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (2, 'Central Workshop');
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (3, 'Angelo\'s Studio');
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (4, 'Weaving Factory');
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (5, 'Weaving Shop');
INSERT INTO `lab2`.`suppliers` (`id`, `name`) VALUES (6, 'OKEA');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`prices`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (1, 0020, 'art 0', 110, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (2, 0020, 'art 0', 150, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (3, 0023, 'art 3', 200, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (4, 0025, 'art 5', 167, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (5, 0026, 'art 6', 175, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (6, 0026, 'art 6', 170, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (7, 0026, 'art 6', 68, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (9, 0100, 'plate 1', 50, 1);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (10, 0100, 'plate 1', 48, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (11, 0101, 'plate 2', 33, 1);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (12, 0101, 'plate 2', 36, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (13, 0102, 'plate 3', 41, 1);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (14, 0102, 'plate 3', 40, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (15, 0103, 'plate 4', 70, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (16, 0010, 'souvenir 0', 59, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (17, 0010, 'souvenir 0', 67, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (18, 0011, 'souvenir 1', 50, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (19, 0012, 'souvenir 2', 79, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (20, 0012, 'souvenir 2', 79, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (21, 0012, 'souvenir 2', 75, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (22, 0013, 'souvenir 3', 99, 6);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (23, 1302, 'pink hat', 217, 4);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (24, 1302, 'pink hat', 219, 5);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (25, 6420, 'bicycle', 1490, 3);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (26, 0200, 'board', 349, 2);
INSERT INTO `lab2`.`prices` (`id`, `vencode`, `name`, `price`, `suppliers_id`) VALUES (27, 0200, 'board', 369, 6);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`vehicle_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`vehicle_type` (`id`, `name`) VALUES (1, 'Bicycle');
INSERT INTO `lab2`.`vehicle_type` (`id`, `name`) VALUES (2, 'Truck');
INSERT INTO `lab2`.`vehicle_type` (`id`, `name`) VALUES (3, 'Train');
INSERT INTO `lab2`.`vehicle_type` (`id`, `name`) VALUES (4, 'Airplane');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`delivery_status`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`delivery_status` (`id`, `status`) VALUES (1, 'packed');
INSERT INTO `lab2`.`delivery_status` (`id`, `status`) VALUES (2, 'sent');
INSERT INTO `lab2`.`delivery_status` (`id`, `status`) VALUES (3, 'delivered');
INSERT INTO `lab2`.`delivery_status` (`id`, `status`) VALUES (4, 'recieved');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`deliveries`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Data for table `lab2`.`application_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`application_type` (`id`, `name`, `price`) VALUES (1, 'oil print', 20);
INSERT INTO `lab2`.`application_type` (`id`, `name`, `price`) VALUES (2, 'enamel', 5);
INSERT INTO `lab2`.`application_type` (`id`, `name`, `price`) VALUES (3, 'laser print', 10);
INSERT INTO `lab2`.`application_type` (`id`, `name`, `price`) VALUES (4, 'engraving', 25);
INSERT INTO `lab2`.`application_type` (`id`, `name`, `price`) VALUES (5, 'ornament', 34);

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`products_in_order`
-- -----------------------------------------------------



-- -----------------------------------------------------
-- Data for table `lab2`.`transportation_sup`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`transp_sup` (`id`, `name`) VALUES (1, 'TransTrucks');
INSERT INTO `lab2`.`transp_sup` (`id`, `name`) VALUES (2, 'On Time');
INSERT INTO `lab2`.`transp_sup` (`id`, `name`) VALUES (3, 'Air Package');

COMMIT;


-- -----------------------------------------------------
-- Data for table `lab2`.`vehicle_type_has_transportation_sup`
-- -----------------------------------------------------
START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (1, 3, 1000);
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (1, 2, 900);
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (2, 1, 500);
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (3, 2, 1500);
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (4, 2, 2000);
INSERT INTO `lab2`.`vech_tsup` (`vechicle_type_id`, `transp_sup_id`, `price`) VALUES (4, 3, 2100);

COMMIT;

START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`deliveries` (`id`, `transp_sup_id`, `vechicle_type_id`, `delivery_status_id` ,`date`) VALUES (1, 2, 1, 1, '2024.05.01');
INSERT INTO `lab2`.`deliveries` (`id`, `transp_sup_id`, `vechicle_type_id`, `delivery_status_id` ,`date`) VALUES (2, 3, 1, 2, '2024.05.28');
INSERT INTO `lab2`.`deliveries` (`id`, `transp_sup_id`, `vechicle_type_id`, `delivery_status_id` ,`date`) VALUES (3, 1, 2, 4, '2024.04.09');
INSERT INTO `lab2`.`deliveries` (`id`, `transp_sup_id`, `vechicle_type_id`, `delivery_status_id` ,`date`) VALUES (4, 1, 4, 2, '2024.05.10');
INSERT INTO `lab2`.`deliveries` (`id`, `transp_sup_id`, `vechicle_type_id`, `delivery_status_id` ,`date`) VALUES (5, 2, 3, 3, '2024.04.27');

COMMIT;

START TRANSACTION;
USE `lab2`;
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (1, 1, 1, 1, 1, 2);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (2, 1, 4, 1, 2, 3);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (3, 1, 9, 3, 2, 6);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (4, 2, 10, 5, 3, 19);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (5, 3, 6, 3, 5, 8);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (6, 5, 6, 2, 3 ,3);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (7, 5, 7, 1, 3, 6);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (8, 6, 9, 4, 4, 7);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (9, 9, 2, 3, 1, 9);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (10, 9, 3, 3, 1, 10);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (11, 9, 4, 4, 2, 2);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (12, 9, 5, 5, 1, 2);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (13, 2, 3, 4, null, 1);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (14, 9, 5, 2, null, 1);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (15, 4, 2, 1, null, 17);
INSERT INTO `lab2`.`products_in_order` (`id`, `orders_id`, `products_id`, `application_type_id`, `deliveries_id`, `amount`) VALUES (16, 9, 3, 4, null, 5);

COMMIT;