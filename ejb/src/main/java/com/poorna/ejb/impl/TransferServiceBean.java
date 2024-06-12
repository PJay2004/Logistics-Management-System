package com.poorna.ejb.impl;

import com.poorna.ejb.remote.AccountService;
import com.poorna.ejb.remote.TransferService;
import jakarta.ejb.EJB;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionManagement;
import jakarta.ejb.TransactionManagementType;
import jakarta.inject.Inject;
import jakarta.transaction.SystemException;
import jakarta.transaction.UserTransaction;

@Stateless
@TransactionManagement(TransactionManagementType.BEAN)
public class TransferServiceBean implements TransferService {

    @EJB
    private AccountService accountService;

    @Inject
    private UserTransaction transaction;

    @Override
    public void transferAmount(String sourceAccountNo, String destinationAccountNo, double amount) {
        try {
            transaction.begin();
            accountService.deductToAccount(sourceAccountNo, amount);
            accountService.creditToAccount(destinationAccountNo, amount);
            transaction.commit();
        } catch (Exception e) {
            try {
                transaction.rollback();
            } catch (SystemException ex) {
                throw new RuntimeException(ex);
            }
        }
    }
}
