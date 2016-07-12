//
//  Account.swift
//  MyBankApp
//
//  Created by John Xiong on 7/8/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//



class Account {
    var accountId: Int?;
    var accountName: String?;
    var accountAmount: Float?;
    
    init(){}
    
    init(accountId: Int, accountName: String, accountAmount: Float) {
        self.accountId = accountId;
        self.accountName = accountName;
        self.accountAmount = accountAmount;
    }
}