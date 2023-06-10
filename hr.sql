create table book(
    ISBN varchar2(20) PRIMARY KEY,
    NAME varchar2(50),
    WRITER varchar2(50),
    PUBLISHER varchar2(50),
    RECEIVE date default current_date
    );

commit;

select * from book;

drop table book;

INSERT INTO book(isbn, name, writer, publisher) VALUES(000001, '도서관만들자', '박병주','성남캠');
INSERT INTO book(isbn, name, writer, publisher) VALUES(000002, '도서관힘들다', '도서관싫은박병주','도서관있는성남캠');

delete from book
where isbn = 000001;

------------------------------------------------------

CREATE TABLE USERS(
    ID VARCHAR2(20) PRIMARY key,
    PASSWORD VARCHAR2(20),
    NAME VARCHAR2(10),
    BIRTH VARCHAR2(30),
    EMAIL VARCHAR2(30),
    PHONE VARCHAR2(100),
    ROLE VARCHAR2(5)
    );
drop table users;
INSERT INTO USERS(ID, PASSWORD, NAME, BIRTH, EMAIL, PHONE, ROLE) VALUES('test', 'test', 'test', '19000101', 'test@test.com', '01012345678', 'USER');
    
COMMIT;

SELECT * FROM USERS;

