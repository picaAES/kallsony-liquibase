--changeset Johan:9
CREATE TABLE `address` (
  `id` int NOT NULL,
  --`address` varchar(500) NOT NULL,
  --`status` int NOT NULL,
  `cityCode` int NOT NULL,
  `stateCode` int NOT NULL,
  `userId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_city_address_idx` (`cityCode`),
  KEY `FK_state_address_idx` (`stateCode`),
  KEY `FK_user_address_idx` (`userId`),
  CONSTRAINT `FK_city_address` FOREIGN KEY (`cityCode`) REFERENCES `city` (`id`),
  CONSTRAINT `FK_state_address` FOREIGN KEY (`stateCode`) REFERENCES `state` (`id`),
  CONSTRAINT `FK_user_address` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
)
