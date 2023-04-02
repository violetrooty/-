DROP TABLE IF EXISTS student;
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS sc;

 create table student(
    sno char(7) primary key,
    sname varchar(20) not null,
    ssex char(2) check(ssex='女' or ssex='男'),
    sage tinyint check(sage>=15 and sage<=45),
    sdept varchar(20) default '计算机系'
    );

create table course(
     cno char(10) primary key,
     cname char(20) not null,
     ccredit tinyint check(ccredit>0),
     semester tinyint check(semester>0),
     period tinyint
     );

create table sc(
	sno char(7),
	cno char(10),
	foreign key(sno) references student(sno),
	foreign key(cno) references course(cno),
	grade tinyint check(grade>=0 and grade<=100)
	);

insert into student(sno,sname,ssex,sage) values('9876541','完小完','女','22');
insert into student(sno,sname,ssex,sage) values('9876542','张大请','男','23');
insert into student(sno,sname,ssex,sage) values('9876512','张没','男','22');
insert into student(sno,sname,ssex,sage,sdept) values('9876513','级豪华','女','21','数学系');
insert into student(sno,sname,ssex,sage,sdept) values('9876514','发大财','男','19','信息系');
insert into student(sno,sname,ssex,sage) values('9876515','李大欧','女','21');
insert into student(sno,sname,ssex,sage) values('9876516','录屏就','男','21');
 insert into student(sno,sname,ssex,sage) values('9876517','刘大床','女','20');
insert into student(sno,sname,ssex,sage) values('9876518','锴绘画','女','25');
insert into student(sno,sname,ssex,sage) values('9876519','咯就','男','26');
 insert into student(sno,sname,ssex,sage) values('9876520','改ibc','男','32');
insert into student(sno,sname,ssex,sage) values('9876521','级大小','男','22');
insert into student(sno,sname,ssex,sage) values('9876522','大小','女','36');
insert into student(sno,sname,ssex,sage,sdept) values('9876523','复合肥','女','18','信息系');
insert into student(sno,sname,ssex,sage,sdept) values('9876524','扣分发','女','21','数学系');
insert into student(sno,sname,ssex,sage,sdept) values('9876525','大小和','男','19','信息系');
insert into student(sno,sname,ssex,sage,sdept) values('9876526','湖北','女','18','数学系');
insert into student(sno,sname,ssex,sage,sdept) values('9876527','覅的','男','16','信息系');
insert into student(sno,sname,ssex,sage,sdept) values('9876528','下决心','男','22','数学系')

insert into sc values('9876541','c05','33');
insert into sc values('9876542','c06','64');
insert into sc values('9876512','c07','56');
insert into sc values('9876513','c08','45');
insert into sc values('9876514','c09','90');
insert into sc values('9876515','c10','90');
insert into sc values('9876516','c11','90');
insert into sc values('9876517','c12','90');
insert into sc values('9876518','c13','90');





insert into course values('c05','音乐','4','2','45');
insert into course values('c06','英语','5','2','56');
insert into course values('c07','数学','6','3','45');
insert into course values('c09','历史','7','2','50');
insert into course values('c08','语文','8','2','45');
insert into course values('c10','Java','9','4','45');
insert into course values('c11','体育','10','4','45');
insert into course values('c12','心里','11','4','64');
insert into course values('c13','思政','12','4','64');


