CREATE TABLE AUTHORS (
    ID NUMBER GENERATED ALWAYS as IDENTITY (START with 1 INCREMENT by 1),
    USERNAME VARCHAR2(20),
    PASSWORD VARCHAR(20),
    REGISTERED_ON DATE,
    PRIMARY KEY (Id)
);

CREATE TABLE TOURNAMENTS (
     ID NUMBER GENERATED ALWAYS as IDENTITY (START with 1 INCREMENT by 1),
     NAME VARCHAR2(50),
     AUTHOR_ID NUMBER NOT NULL,
     CREATED_ON DATE,
     UPDATED_ON DATE,
     PRIMARY KEY (Id),
     CONSTRAINT FK_AUTHOR FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(id)
);

CREATE TABLE BATTLE_OPTIONS (
     ID NUMBER GENERATED ALWAYS as IDENTITY (START with 1 INCREMENT by 1),
     NAME VARCHAR2(50),
     PRIMARY KEY (Id)
);

CREATE TABLE TOURNAMENTS_TO_BATTLE_OPTIONS (
    TOURNAMENT_ID NUMBER NOT NULL,
    BATTLE_OPTION_ID NUMBER NOT NULL,
    PRIMARY KEY (TOURNAMENT_ID, BATTLE_OPTION_ID),
    CONSTRAINT fk_tournament FOREIGN KEY (TOURNAMENT_ID) REFERENCES TOURNAMENTS (ID) ON DELETE CASCADE ,
    CONSTRAINT fk_battle_option FOREIGN KEY (BATTLE_OPTION_ID) REFERENCES BATTLE_OPTIONS (ID) ON DELETE CASCADE
);


