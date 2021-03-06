CREATE TABLE info (
	ID VARCHAR2(100),
	PW VARCHAR2(100),
	NAME VARCHAR2(100),
	AGE NUMBER
);

SELECT * FROM info

CREATE TABLE MEMBERS (
MEM_ID VARCHAR2(20) CONSTRAINT MEM_MID_PK PRIMARY KEY,
MEM_PW VARCHAR2(20) NOT NULL,
MEM_NAME VARCHAR2(10) NOT NULL,
MEM_AGE NUMBER(3) NOT NULL,
MEM_PNUM NUMBER(15) NOT NULL,
MEM_ADD VARCHAR2(70) NOT NULL
);

CREATE TABLE BOOKS (
BOOK_GENRE_ID VARCHAR2(100),
BOOK_TITLE VARCHAR2(1000),
BOOK_AUTHOR VARCHAR2(1000),
BOOK_PUBLISHER VARCHAR2(1000),
BOOK_RENTYN CHAR(38)
);

ALTER TABLE BOOKS ADD BOOK_YEAR NUMBER(38);


drop table books;

select * from books;

select * from MEMBERS
select * from BOOKS

CREATE TABLE RENTAL (
RENT_ID NUMBER(15) CONSTRAINT RT_RTID_PK PRIMARY KEY,
BOOK_GENRE_ID VARCHAR2(10) NOT NULL,
MEM_ID VARCHAR2(20) NOT NULL,
MEM_NAME VARCHAR2(10) NOT NULL,
MEM_AGE NUMBER(3) NOT NULL,
RENT_DATE DATE NOT NULL,
RENT_RTN_DATE DATE NOT NULL
)

SELECT * FROM RENTAL


ALTER TABLE RENTAL
ADD CONSTRAINT BK_BKGRID_FK FOREIGN KEY (BOOK_GENRE_ID)
REFERENCES BOOKS (BOOK_GENRE_ID)

ALTER TABLE RENTAL
ADD CONSTRAINT MEM_MID_FK FOREIGN KEY (MEM_ID)
REFERENCES MEMBERS (MEM_ID)



CREATE TABLE BOARDS(
BRD_NUM NUMBER(5) NOT NULL PRIMARY KEY,
BRD_TITLE VARCHAR2(20) NOT NULL,
MEM_ID  VARCHAR2(20) NOT NULL,
BRD_TEXT  VARCHAR2(30) NOT NULL,
BRD_DATE DATE DEFAULT SYSDATE,
BRD_TYPE NUMBER(1) NOT NULL
)

SELECT * FROM BOARDS

ALTER TABLE BOARDS
ADD CONSTRAINT BD_MID_FK FOREIGN KEY (MEM_ID)
REFERENCES MEMBERS (MEM_ID);

DROP TABLE MEMBERS
DROP TABLE BOOKS
DROP TABLE RENTAL
DROP TABLE BOARDS
