//
//  AccountFactory.swift
//  MyBankApp
//
//  Created by John Xiong on 7/8/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//


class AccountFactory {

    
    func GetAccounts() -> Array<Account> {
        return [Account(accountId: 1, accountName: "Checkings", accountAmount: 10.00),
                Account(accountId: 2, accountName: "Savings", accountAmount: 15.00)];
    }
    
    
}