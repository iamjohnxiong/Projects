
//
//  AccountDetails.swift
//  JXFU Financial
//
//  Created by John Xiong on 7/24/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import Foundation;

enum TransactionType {
    case Credit
    case Debit
}

enum TransactionStatus {
    case Pending
    case Complete
}

class Transaction {
    var id: Int;
    var type: TransactionType;
    var amount: Float;
    var description: String;
    var status: TransactionStatus;
    var date: NSDate;
    
    init(id: Int, type: TransactionType, amount: Float, description: String, status: TransactionStatus, date: NSDate) {
        self.id  = id;
        self.type = type;
        self.amount = amount;
        self.description = description;
        self.status = status;
        self.date = date;
    }
}