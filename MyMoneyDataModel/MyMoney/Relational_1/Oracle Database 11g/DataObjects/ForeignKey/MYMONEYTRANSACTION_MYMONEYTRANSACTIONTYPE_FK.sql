--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE MYMONEYTRANSACTION ADD CONSTRAINT MYMONEYTRANSACTION_MYMONEYTRANSACTIONTYPE_FK FOREIGN KEY ( MYMONEYTRANSACTIONTYPE_TRANSACTIONTYPEID ) REFERENCES MYMONEYTRANSACTIONTYPE ( TRANSACTIONTYPEID ) ;
