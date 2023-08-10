-- 이전 table를 지우고
drop table if exists sample_entity;

-- 초기 스케마를 정의하고
create table sample_entity(
                              id   bigserial primary key,
                              name varchar(255)
);

-- 값을 추가한다
INSERT into sample_entity (name) values ('postgres1');
INSERT into sample_entity (name) values ('postgres2');
INSERT into sample_entity (name) values ('postgres3');
