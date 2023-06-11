CREATE TABLE book (
  isbn VARCHAR2(20) PRIMARY KEY,
  name VARCHAR2(100),
  writer VARCHAR2(100),
  publisher VARCHAR2(100),
  receive DATE,
  rentable VARCHAR2(20)
);

commit;

select * from book;

drop table book;

INSERT INTO book (isbn, name, writer, publisher, receive, rentable) VALUES ('978-0307474279', '도서관싫다', '박병주', '성남캠', SYSDATE, '대여가능');
INSERT INTO book(isbn, name, writer, publisher, publicationdate, genre) VALUES(000002, '도서관힘들다', '도서관싫은박병주','도서관있는성남캠', '2023년06월08일', '공포');

delete from book
where isbn = 000001;

------------------------------------------------------

CREATE TABLE USERS(
    ID VARCHAR2(20) PRIMARY key,
    PASSWORD VARCHAR2(20)Not null,
    NAME VARCHAR2(10)Not null,
    BIRTH date Not null,
    EMAIL VARCHAR2(30) Not null,
    PHONE VARCHAR2(100) Not null,
    ROLE VARCHAR2(5) Not null
    );
drop table users;

INSERT INTO USERS(ID, PASSWORD, NAME, BIRTH, EMAIL, PHONE, ROLE) VALUES('test', 'test', 'test', '19000101', 'test@test.com', '01012345678', 'USER');
    
COMMIT;

SELECT * FROM USERS;

-------------------------------------------------------------------------------

CREATE TABLE Rental (
    ISBN varchar2 (20) PRIMARY KEY,
    B_name varchar2(200),
    U_ID varchar2(20),
    rental_date date,
    return_date date,
    foreign key (isbn) references book(isbn),
    foreign key (U_ID) references users(ID)
    );
    
select * from rental;    

drop table rental;

INSERT INTO Rental(isbn, b_name, U_ID, rental_date, return_date) VALUES('1', '도서관힘들다', 'bjbj', '20230609', '20230612');