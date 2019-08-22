use master;
create table user (
  id int(11) not null auto_increment primary key   comment '主键',
  name varchar(64) not null comment '名称',
  age tinyint null comment '年龄'
);


use slave;
create table user (
  id int(11) not null auto_increment primary key comment '主键',
  name varchar(64) not null comment '名称',
  age tinyint null comment '年龄'
)
