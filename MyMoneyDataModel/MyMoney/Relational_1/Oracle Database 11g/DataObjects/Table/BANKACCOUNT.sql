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
    --  ERROR: Column name length exceeds maximum allowed length(30)
    MYMONEYACCOUNTTYPE_BANKACCOUNTTYPEID NUMBER NOT NULL
  ) ;
