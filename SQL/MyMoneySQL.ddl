-- Generated by Oracle SQL Developer Data Modeler 4.1.5.907
--   at:        2017-03-30 22:17:24 CDT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g




CREATE TABLE BANKACCOUNT
  (
    BANKACCOUNTID      NUMBER NOT NULL ,
    BANKACCOUNTNUMBER  NUMBER ,
    BRANCHNAME         VARCHAR2 (50) ,
    BRANCHADDRESS      VARCHAR2 (100) ,
    BANKNAME           VARCHAR2 (50) ,
    BALANCE            NUMBER ,
    CREATEDBY          VARCHAR2 (50) ,
    MODIFIEDBY         VARCHAR2 (50) ,
    CREATEDDATE        DATE ,
    MODIFIEDDATE       DATE ,
    MYMONEYUSER_USERID NUMBER NOT NULL ,
    BANKACCOUNTTYPEID  NUMBER NOT NULL
  ) ;
ALTER TABLE BANKACCOUNT ADD CONSTRAINT BANKACCOUNT_PK PRIMARY KEY ( BANKACCOUNTID ) ;


CREATE TABLE MYMONEYACCOUNTTYPE
  (
    BANKACCOUNTTYPEID NUMBER NOT NULL ,
    ACCOUNTTYPENAME   VARCHAR2 (50) ,
    CREATEDBY         VARCHAR2 (50) ,
    MODIFIEDBY        VARCHAR2 (50) ,
    CREATEDDATE       DATE ,
    MODIFIEDDATE      DATE
  ) ;
ALTER TABLE MYMONEYACCOUNTTYPE ADD CONSTRAINT MYMONEYACCOUNTTYPE_PK PRIMARY KEY ( BANKACCOUNTTYPEID ) ;


CREATE TABLE MYMONEYCATEGORY
  (
    CATEGORYTYPEID   NUMBER NOT NULL ,
    CATEGORYTYPENAME VARCHAR2 (50) ,
    CREATEDBY        VARCHAR2 (50) ,
    MODIFIEDBY       VARCHAR2 (50) ,
    CREATEDDATE      DATE ,
    MODIFIEDDATE     DATE
  ) ;
ALTER TABLE MYMONEYCATEGORY ADD CONSTRAINT MYMONEYCATEGORY_PK PRIMARY KEY ( CATEGORYTYPEID ) ;


CREATE TABLE MYMONEYTRANSACTION
  (
    TRASANCTIONID     NUMBER NOT NULL ,
    TRANSACTIONNUMBER NUMBER ,
    TRANSACTIONAMOUNT NUMBER ,
    TRANSACTIONDATE   DATE ,
    CREATEDBY         VARCHAR2 (50) ,
    CREATEDDATE       DATE ,
    MODIFIEDBY        VARCHAR2 (50) ,
    MODIFIEDDATE      DATE ,
    BANKACCOUNTID     NUMBER NOT NULL ,
    CATEGORYTYPEID    NUMBER NOT NULL ,
    TRANSACTIONTYPEID NUMBER NOT NULL
  ) ;
ALTER TABLE MYMONEYTRANSACTION ADD CONSTRAINT MYMONEYTRANSACTION_PK PRIMARY KEY ( TRASANCTIONID ) ;


CREATE TABLE MYMONEYTRANSACTIONTYPE
  (
    TRANSACTIONTYPEID   NUMBER NOT NULL ,
    TRANSACTIONTYPENAME VARCHAR2 (50) ,
    CREATEDDATE         DATE ,
    MODIFIEDDATE        DATE ,
    CREATEDBY           VARCHAR2 (50) ,
    MODIFIEDBY          VARCHAR2 (50)
  ) ;
ALTER TABLE MYMONEYTRANSACTIONTYPE ADD CONSTRAINT MYMONEYTRANSACTIONTYPE_PK PRIMARY KEY ( TRANSACTIONTYPEID ) ;


CREATE TABLE MYMONEYUSER
  (
    FIRSTNAME    VARCHAR2 (50) ,
    LASTNAME     VARCHAR2 (50) ,
    USERNAME     VARCHAR2 (50) ,
    USERID       NUMBER NOT NULL ,
    PASSWORD     VARCHAR2 (15) ,
    EMAIL        VARCHAR2 (30) ,
    PHONENUMBER  VARCHAR2 (15) ,
    CREATEDBY    VARCHAR2 (50) ,
    MODIFIEDBY   VARCHAR2 (50) ,
    CREATEDDATE  DATE ,
    MODIFIEDDATE DATE
  ) ;
ALTER TABLE MYMONEYUSER ADD CONSTRAINT MYMONEYUSER_PK PRIMARY KEY ( USERID ) ;


ALTER TABLE MYMONEYTRANSACTION ADD CONSTRAINT BANKACCOUNT_FK FOREIGN KEY ( BANKACCOUNTID ) REFERENCES BANKACCOUNT ( BANKACCOUNTID ) ;

ALTER TABLE BANKACCOUNT ADD CONSTRAINT MYMONEYACCOUNTTYPE_FK FOREIGN KEY ( BANKACCOUNTTYPEID ) REFERENCES MYMONEYACCOUNTTYPE ( BANKACCOUNTTYPEID ) ;

ALTER TABLE MYMONEYTRANSACTION ADD CONSTRAINT MYMONEYCATEGORY_FK FOREIGN KEY ( CATEGORYTYPEID ) REFERENCES MYMONEYCATEGORY ( CATEGORYTYPEID ) ;

ALTER TABLE BANKACCOUNT ADD CONSTRAINT MYMONEYUSER_FK FOREIGN KEY ( MYMONEYUSER_USERID ) REFERENCES MYMONEYUSER ( USERID ) ;

ALTER TABLE MYMONEYTRANSACTION ADD CONSTRAINT TRANSACTIONTYPE_FK FOREIGN KEY ( TRANSACTIONTYPEID ) REFERENCES MYMONEYTRANSACTIONTYPE ( TRANSACTIONTYPEID ) ;


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
