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