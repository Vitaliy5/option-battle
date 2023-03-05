ALTER TABLE TOURNAMENTS DROP CONSTRAINT FK_AUTHOR;
ALTER TABLE TOURNAMENTS RENAME COLUMN AUTHOR_ID TO USER_ID;
ALTER TABLE AUTHORS RENAME TO USERS;
ALTER TABLE TOURNAMENTS ADD CONSTRAINT FK_USERS FOREIGN KEY (USER_ID) REFERENCES USERS(ID);
