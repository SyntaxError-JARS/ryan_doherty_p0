package com.revature.Ryan_Doherty_p0.services;


import com.revature.Ryan_Doherty_p0.daos.AccountDao;
import com.revature.Ryan_Doherty_p0.util.AppState;
import com.revature.banking.util.logging.Logger;

import java.util.Scanner;


public class AccountServices {

    private AccountDao accountDao = new AccountDao();
    private Account account = new Account();

    public boolean validateUserInput(Account newUser) {
        System.out.println("Validating User: " + newUser);
        if(newUser == null) return false;
        if(newUser.getEmail() == null || newUser.getEmail().trim().equals("")) return false;
        if(newUser.getUsername() == null || newUser.getUsername().trim().equals("")) return false;
        if(newUser.getPassword() == null || newUser.getPassword().trim().equals("")) return false;
        System.out.println("The User Has been Validated");
        if (verifyNewEmail(newUser.getEmail()) == true){
            System.out.println("This email has already been taken, please try again");
            return false;
        } else if (verifyNewUsername(newUser.getUsername()) == true) {
            System.out.println("This username has already been taken, please try again");
            return false;
        }else{
            createNewUser(newUser);
            return true;
        }
    }

    public boolean verifyNewUsername(String username){
        return accountDao.pullUsernames(username);
    }

    public boolean verifyNewEmail(String email){
        return accountDao.pullEmails(email);
    }

    public void createNewUser(Account newUser){
        System.out.println("New user being created");
        AccountDao.create(newUser);
        }

    }
