create database brs;
use brs;
CREATE TABLE `brs`.`Reference_master` (
  `reference_id` varchar(255) NOT NULL,
  `rating_weight` INT(2) NULL,
  `reference_type` VARCHAR(45) NULL,
  `created_date` DATE NULL,
  `last_modified_date` DATE NULL,
  PRIMARY KEY (`reference_id`));
CREATE TABLE `brs`.`Attributes_master` (
  `attribute_id` INT(5) NOT NULL,
  `attribute_name` VARCHAR(45) NULL,
  PRIMARY KEY (`attribute_id`));
CREATE TABLE Rating_attributes_mapping (
  rating_weight INT(2) NOT NULL,
  attribute_id INT(5) NULL,
  id INT NOT NULL);


use brs;
insert into reference_master values(1,"buyer",3,"buyer",'2019-05-24','2019-05-30');
insert into reference_master values(1,"buyer1",7,"buyer",'2019-05-24','2019-05-30');
insert into reference_master values(1,"buyer2",5,"buyer",'2019-05-24','2019-05-30');
insert into reference_master values(1,"seller1",5,"seller",'2019-05-24','2019-05-24');
insert into attributes_master values(1,"no cod");
insert into attributes_master values(2,"coupon5");
insert into attributes_master values(3,"coupon10");
insert into attributes_master values(4,"coupon15");
insert into attributes_master values(5,"coupon20");
insert into attributes_master values(6,"cashback50");
insert into rating_attributes_mapping values(1,1,1);
insert into rating_attributes_mapping values(2,1,2);
insert into rating_attributes_mapping values(3,1,3);
insert into rating_attributes_mapping values(7,2,4);
insert into rating_attributes_mapping values(8,3,5);
insert into rating_attributes_mapping values(9,4,6);
insert into rating_attributes_mapping values(10,5,7);
insert into rating_attributes_mapping values(10,6,8);
insert into rating_attributes_mapping values(9,6,9);

