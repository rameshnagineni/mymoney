CREATE TABLE MYMONEYTRANSACTION
  (
    TRASANCTIONID                  NUMBER NOT NULL ,
    TRANSACTIONNUMBER              NUMBER ,
    TRANSACTIONAMOUNT              NUMBER ,
    TRANSACTIONDATE                DATE ,
    CREATEDBY                      VARCHAR2 (50) ,
    CREATEDDATE                    DATE ,
    MODIFIEDBY                     VARCHAR2 (50) ,
    MODIFIEDDATE                   DATE ,
    BANKACCOUNT_BANKACCOUNTID      NUMBER NOT NULL ,
    MYMONEYCATEGORY_CATEGORYTYPEID NUMBER NOT NULL ,
    --  ERROR: Column name length exceeds maximum allowed length(30)
    MYMONEYTRANSACTIONTYPE_TRANSACTIONTYPEID NUMBER NOT NULL
  ) ;