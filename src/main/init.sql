DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(64) NOT NULL COMMENT '姓名',
  `age` INT(2) DEFAULT NULL COMMENT '年龄',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT=' 用户';

INSERT INTO mybatis.users (name, age) VALUES ("薛宝鹏",24);
INSERT INTO mybatis.users (name, age) VALUES ("李哦哦",23);
INSERT INTO mybatis.users (name, age) VALUES ("第五位",24);
INSERT INTO mybatis.users (name, age) VALUES ("每股日",25);
INSERT INTO mybatis.users (name, age) VALUES ("劳累了",26);
INSERT INTO mybatis.users (name, age) VALUES ("没打你",13);
INSERT INTO mybatis.users (name, age) VALUES ("不知道",43);
INSERT INTO mybatis.users (name, age) VALUES ("向相信",45);
INSERT INTO mybatis.users (name, age) VALUES ("我问问",78);
INSERT INTO mybatis.users (name, age) VALUES ("方法数",33);