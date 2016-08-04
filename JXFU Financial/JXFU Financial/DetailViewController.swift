//
//  DetailViewController.swift
//  JXFU Financial
//
//  Created by John Xiong on 7/24/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var accountName: UILabel!
    @IBOutlet weak var accountId: UILabel!
    @IBOutlet weak var accountAmount: UILabel!
    @IBOutlet weak var detailTable: UITableView!
    
    var transactions: [Transaction]?;
    var selectedAccount: Account?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        transactions = AccountFactory().getTransactions(selectedAccount!);
        
        accountName.text = String(selectedAccount!.accountName);
        accountId.text = String(selectedAccount!.accountId);
        accountAmount.text = String(selectedAccount!.accountAmount);
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (transactions?.count)!;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = detailTable.dequeueReusableCellWithIdentifier("DetailCell") as! DetailCell;
        let transaction = transactions?[indexPath.row];
        
        
        cell.amount.text = String(transaction!.amount);
        
        if transaction!.type == TransactionType.Credit {
            cell.amount.textColor = UIColor.greenColor();
        } else {
            cell.amount.textColor = UIColor.redColor();
        }
        
        cell.transactionDescription.text = transaction!.description;
        
        if transaction!.status == TransactionStatus.Pending {
            cell.statusDate.text = String(transaction!.status);
        } else {
            cell.statusDate.text = String(transaction!.date);
        }
        
        return cell;
    }
}
