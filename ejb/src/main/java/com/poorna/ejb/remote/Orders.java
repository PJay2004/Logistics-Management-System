package com.poorna.ejb.remote;

import jakarta.ejb.Remote;

@Remote
public interface Orders {

    boolean order(String orderNo);
}
