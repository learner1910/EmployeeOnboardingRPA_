CREATE TABLE ONBOARDCHECKLIST(
FirstName varchar(200) NOT NULL,
LastName varchar(200) NOT NULL,
JoiningDate Datetime NOT NULL,
MailID varchar(200) NOT NULL,
BGV varchar(200) NOT NULL,
IT varchar(200) NOT NULL,
Security varchar(200) NOT NULL,
Finance varchar(200) NOT NULL,
CorporateTraining varchar(200) NOT NULL,
OnboardStatus varchar(200) NOT NULL,
PRIMARY KEY(MailID)
);
INSERT INTO ONBOARDCHECKLIST(FirstName,LastName,JoiningDate,MailID, BGV, IT, Security, Finance, CorporateTraining,OnboardStatus)
VALUES ( 'Chris', 'Johnson','2021-03-03','chris.johnson@org.ac.in','InProgress','InProgress','InProgress','InProgress','InProgress','InProgress'),('Joan','Gray','2021-03-06','john.manuel@org.ac.in','InProgress','InProgress','InProgress','InProgress','InProgress','InProgress'),
('Max','Reed','2021-03-13','max.reed@org.ac.in','Complete','Complete','Complete','Complete','Complete','Complete');

SELECT * FROM ONBOARDCHECKLIST;