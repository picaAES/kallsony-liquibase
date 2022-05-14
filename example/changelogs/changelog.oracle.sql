--changeset Johan:9
CREATE TABLE address (
  id int,
  address varchar(80),
  status int NOT NULL,
  cityCode int NOT NULL,
  stateCode int NOT NULL,
  userId int NOT NULL
) 

