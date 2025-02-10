CREATE TABLE `admin` (
    `admin_id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(100) NOT NULL
);

CREATE TABLE `dishes` (
    `dish_id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `description` TEXT,
    `price` DECIMAL(10, 2) NOT NULL,
    `restaurant_id` INT,
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant`(`restaurant_id`)
);

CREATE TABLE `restaurant` (
    `restaurant_id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(15) NOT NULL,
    `email` VARCHAR(100) NOT NULL
);

CREATE TABLE `users` (
    `user_id` INT AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `phone` VARCHAR(15)
);

CREATE TABLE `users_orders` (
    `order_id` INT AUTO_INCREMENT PRIMARY KEY,
    `user_id` INT,
    `restaurant_id` INT,
    `order_date` DATETIME NOT NULL,
    `total_amount` DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`),
    FOREIGN KEY (`restaurant_id`) REFERENCES `restaurant`(`restaurant_id`)
);