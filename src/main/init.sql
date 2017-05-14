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


DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`(
  `teacherId` BIGINT(19) NOT NULL AUTO_INCREMENT  COMMENT '主键',
  `teacherName` VARCHAR(20) NOT NULL  COMMENT '姓名',
  PRIMARY KEY (`teacherId`)
)ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COMMENT=' 教师';

/**
表的外键类型和关联表的主键类型要一模一样**/
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`(
  `classId` INT NOT NULL AUTO_INCREMENT ,
  `className` VARCHAR(20),
  `teacherId` BIGINT(19) NOT NULL,
  PRIMARY KEY (`classId`),
  FOREIGN KEY ( `teacherId`) REFERENCES teacher(`teacherId`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;


DROP TABLE  IF EXISTS `student`;
create TABLE    `student`(
  `studentId` INT not NULL  AUTO_INCREMENT,
  `studentName` VARCHAR(20),
  `classId` INT,
  PRIMARY KEY (`studentId`)
);

insert INTO  student(studentName, classId) VALUES ('studentA',1);
insert INTO  student(studentName, classId) VALUES ('studentB',1);
insert INTO  student(studentName, classId) VALUES ('studentC',1);
insert INTO  student(studentName, classId) VALUES ('studentD',2);
insert INTO  student(studentName, classId) VALUES ('studentE',3);
insert INTO  student(studentName, classId) VALUES ('studentF',3);


INSERT INTO teacher(teacherName) VALUES('teacher1');
INSERT INTO teacher(teacherName) VALUES('teacher2');
INSERT INTO teacher(teacherName) VALUES('teacher3');
INSERT INTO teacher(teacherName) VALUES('teacher4');
INSERT INTO teacher(teacherName) VALUES('teacher5');
INSERT INTO teacher(teacherName) VALUES('teacher6');

INSERT INTO class(className, teacherId) VALUES('class_a', 1);
INSERT INTO class(className, teacherId) VALUES('class_b', 2);
INSERT INTO class(className, teacherId) VALUES('class_b', 3);
INSERT INTO class(className, teacherId) VALUES('class_b', 5);
INSERT INTO class(className, teacherId) VALUES('class_c', 3);
INSERT INTO class(className, teacherId) VALUES('class_d', 2);
INSERT INTO class(className, teacherId) VALUES('class_e', 3);
INSERT INTO class(className, teacherId) VALUES('class_f', 4);