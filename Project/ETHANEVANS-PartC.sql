set echo ON

DROP TABLE Member CASCADE CONSTRAINTS;
DROP TABLE Plan CASCADE CONSTRAINTS;

-- TABLES CREATED

CREATE TABLE Plan (
    MemPlan Char(1) NOT NULL,
    Descrip Varchar2(20) NOT NULL,
    Cost Number(5,2) DEFAULT 7.99,
    CONSTRAINT pk_plan PRIMARY KEY (MemPlan)
);

CREATE TABLE Member (
    MemID Char(6) NOT NULL,
    FName Varchar2(25) NOT NULL,
    LName Varchar2(25),
    Email Varchar2(30) NOT NULL,
    MemPlan Char(1),
    City Varchar2(30),
    Prov Char(2),
    CONSTRAINT pk_member PRIMARY KEY (MemID)
);

-- CONSTRAINTS ADDED

ALTER TABLE Member
    ADD CONSTRAINT fk_mem_memplan
    FOREIGN KEY (MemPlan)
    REFERENCES Plan(MemPlan);

ALTER TABLE Member
    ADD CONSTRAINT chk_mem_email
    CHECK (Email LIKE '%@%');

ALTER TABLE Plan
    ADD CONSTRAINT uq_plan_descrip
    UNIQUE (Descrip);

Alter TABLE Plan
    ADD CONSTRAINT chk_plan_cost
    CHECK (Cost BETWEEN 4.99 AND 129.99);

-- DATA INSERTED

-- PLAN

INSERT INTO Plan (MemPlan, Descrip, Cost)
    VALUES ('P', 'Premium', '39.99');
INSERT INTO Plan (MemPlan, Descrip, Cost)
    VALUES ('S', 'Standard', '19.99');
INSERT INTO Plan (MemPlan, Descrip, Cost)
    VALUES ('B', 'Basic', '12.99');
INSERT INTO Plan (MemPlan, Descrip, Cost)
    VALUES ('T', 'Trial', DEFAULT);

-- MEMBER

INSERT INTO Member (MemID, FName, LName, Email, MemPlan, City, Prov)
    VALUES ('100001', 'Shaquille', 'Oatmeal', 'shaqo@nbcc.ca', 'B', 'Fredericton', 'NB');
INSERT INTO Member (MemID, FName, LName, Email, MemPlan, City, Prov)
    VALUES ('100002', 'Bread', 'Pitt', 'bpitt@nbcc.ca', 'S', 'Saint John', 'NB');
INSERT INTO Member (MemID, FName, LName, Email, MemPlan, City, Prov)
    VALUES ('100003', 'Beytwice', 'Knowles', 'beyk@nbcc.ca', 'P', 'Halifax', 'NS');

SELECT * FROM Plan;
SELECT * FROM Member;