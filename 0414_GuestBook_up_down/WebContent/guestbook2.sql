CREATE TABLE guestbook2(
idx number(10) not null PRIMARY KEY,
name varchar2(50),
subject varchar2(50),
content varchar2(4000),
email varchar2(50),
pwd varchar2(50),
filename varchar2(50),
regdate DATE
)

create sequence guestbook2_seq
      increment by 1
      start with 1
      maxvalue 999999
      nocycle
      
