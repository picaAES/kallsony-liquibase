--changeset Johan:9
CREATE TABLE address (
  id int NOT NULL,
  address varchar(500) NOT NULL,
  status int NOT NULL,
  cityCode int NOT NULL,
  stateCode int NOT NULL,
  userId int NOT NULL
) 
