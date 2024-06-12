package com.poorna.ejb.remote;

import com.poorna.ejb.exception.UserNotFoundException;
import jakarta.ejb.Remote;

@Remote
public interface AdminLog {
    boolean login(String username, String password) throws UserNotFoundException;
}
