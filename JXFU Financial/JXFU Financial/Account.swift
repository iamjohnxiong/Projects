//
//  Account.swift
//  JXFU Financial
//
//  Created by John Xiong on 7/24/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation;

class Account {
    var accountId: Int;
    var accountName: String;
    var accountAmount: NSDecimalNumber;
    var transactions: [Transaction]?;
    
    init(accountId: Int, accountName: String, accountAmount: NSDecimalNumber) {
        self.accountId = accountId;
        self.accountName = accountName;
        self.accountAmount = accountAmount;
    }
    
    func getTransactions() -> [Transaction] {
        return AccountFactory().getTransactions(self);
    }
}
