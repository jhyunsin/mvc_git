select * from member;
create table member(
			 id varchar2(20) primary key,
			 pw varchar2(20),
			 name varchar2(20),
			 reg_date varchar2(20),
			 ssn varchar2(10),
			 email varchar2(30),
			 profile_img varchar2(100),
			 phone varchar2(15)
			 );

--CREATE
insert into member(id,pw,name,reg_date,ssn,email,profile_img,phone)
values('lee','1','이순신','2016-07-01','800101-1','lee@test.com','lee.jpg','010-1234-4567');
insert into member(id,pw,name,reg_date,ssn,email,profile_img,phone)
values('oh','1','오기로','2015-07-01','901201-1','her12201@naver.com','oh.jpg','010-2088-5756');
insert into member(id,pw,name,reg_date,ssn,email,profile_img,phone)
values('you','1','유관순','2014-07-01','010701-4','you@test.com','you.jpg','010-1234-4567');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('hong2','1','홍길동','2015-07-01','301201-1','hoing2@test.com','hong2.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('con','1','연결성공','2015-07-01','501201-1','con@test.com','con.jpg');
insert into member(id,pw,name,reg_date,ssn,email,profile_img)
values('choi','1','최진실','2015-07-01','501201-1','choi@test.com','choi.jpg');

--READ ()// static 개념으로 접근한다
select * from member;-- list
select * from member where id = 'hong';-- findByPK map의 키값
select * from member where gender = '남';-- findByNotPK
select count(*) as count from member;--- count
--UPDATE
alter table member add email varchar2(30);
alter table member add profile_img varchar2(100);
alter table member add phone varchar2(15);
update member set email='her12201@naver.com' where id = 'lee';
update member set pw='1' where id = 'lee';
update member set email= id||'@test.com';
update member set email= id||'@test.com';
update member set phone = '010-2088-5756';
update member set profile_img= id||'.jpg';
update member set reg_date = '2015-03-03' where reg_date is null;
update member set reg_date = '2013-06-29' where id = 'ogong';
--delete
delete from member where id = 'jung';
delete from member where id = 'lee';
delete from member where id = 'garbage' and pw='1';

drop table member1;
