--  ERROR: FK name length exceeds maximum allowed length(30)
ALTER TABLE BANKACCOUNT ADD CONSTRAINT BANKACCOUNT_MYMONEYACCOUNTTYPE_FK FOREIGN KEY ( MYMONEYACCOUNTTYPE_BANKACCOUNTTYPEID ) REFERENCES MYMONEYACCOUNTTYPE ( BANKACCOUNTTYPEID ) ;
