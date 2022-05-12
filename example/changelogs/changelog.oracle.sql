--liquibase formatted sql

--changeset amalik:1
--rollback DROP TABLE person;
create table person (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset amalik:2
--rollback DROP TABLE company;
create table company (
    id int primary key,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)

--changeset christine:3
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add country varchar(2)

--changeset amy:4
--rollback ALTER TABLE person DROP COLUMN state;
alter table person add state varchar(2)

--changeset christine:5
--rollback ALTER TABLE person DROP COLUMN country;
alter table person add age varchar(10)

--changeset christine:6
--rollback ALTER TABLE company DROP COLUMN codcity;
alter table company add codcity varchar(3)

--changeset johan:7
--rollback ALTER TABLE company DROP COLUMN codcity2;
alter table company add codcity2 varchar(3)

