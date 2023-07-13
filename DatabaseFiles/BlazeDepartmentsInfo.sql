CREATE TABLE DEPARTMENTSINFO(
Name varchar(200) NOT NULL,
MailID varchar(200) NOT NULL,
Username varchar(200) NOT NULL,
Password varchar(200) NOT NULL,
PRIMARY KEY(Name)
);

INSERT INTO DEPARTMENTSINFO(Name,MailID,Username,Password)
VALUES ('HR','shanzeh.batool2019@vitbhopal.ac.in','hrUser01','abc1234'),('BGV','ayushree.ghoshal2019@vitbhopal.ac.in','bgvUser01','abc1234' ),('IT','ayushree.ghoshal2019@vitbhopal.ac.in','itUser01','abc1234' ),('Security','ayushree.ghoshal2019@vitbhopal.ac.in','secUser01','abc1234' ),('Finance','ayushree.ghoshal2019@vitbhopal.ac.in','finUser01','abc1234' ),('Training','ayushree.ghoshal2019@vitbhopal.ac.in','trainUser01','abc1234' );

SELECT * FROM DEPARTMENTSINFO;