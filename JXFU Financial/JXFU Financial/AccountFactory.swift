//
//  AccountFactory.swift
//  JXFU Financial
//
//  Created by John Xiong on 7/24/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation;

class AccountFactory {
    func getAccounts() -> [Account] {
        var accounts: [Account] = [];
        
        let checkings: Account = Account(accountId: 12345, accountName: "Checking", accountAmount: 4235.32);
        let savings: Account = Account(accountId: 6323, accountName: "Saving", accountAmount: 7482829.02);
        
        accounts.append(checkings);
        accounts.append(savings);

        return accounts;
    }
    
    
    func getTransactions(account: Account) -> [Transaction] {
        var transactions: [Transaction] = [];
        
        if account.accountId == 12345 {
            transactions.append(Transaction(id: 53242, type: TransactionType.Debit, amount: 2342.24, description: "Sporting Goods", status: TransactionStatus.Complete, date: NSDate()));
            transactions.append(Transaction(id: 53243, type: TransactionType.Credit, amount: 5234.34, description: "JXFU FINANCIAL", status: TransactionStatus.Complete, date: NSDate()));
            transactions.append(Transaction(id: 53244, type: TransactionType.Debit, amount: 4.35, description: "John's Party Store", status: TransactionStatus.Complete, date: NSDate()));
            transactions.append(Transaction(id: 53245, type: TransactionType.Debit, amount: 1452353.53, description: "Mercedes Dealership", status: TransactionStatus.Pending, date: NSDate()));
        } else {
            
        }
        
        return transactions;
    }
}
