package com.poorna.ejb.remote;

import jakarta.ejb.Remote;

@Remote
public interface TransferService {
    public void transferAmount(String sourceAccountNo, String destinationAccountNo, double amount);

}
