-- 이전 table를 지우고
drop table if exists sample_entity;

-- 초기 스케마를 정의하고
create table sample_entity(
                              id   bigint auto_increment,
                              name varchar(255),
                              primary key (id)
);

-- 값을 추가한다
INSERT into sample_entity (name) values ('mysql1');
INSERT into sample_entity (name) values ('mysql2');
INSERT into sample_entity (name) values ('mysql3');
