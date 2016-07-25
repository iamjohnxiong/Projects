//
//  AccountViewController.swift
//  JXFU Financial
//
//  Created by John Xiong on 7/24/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var accountTable: UITableView!

    var accounts: [Account]?;
    var selectedAccount: Account?;
    
    override func viewDidLoad() {
        super.viewDidLoad();

        accounts = AccountFactory().getAccounts();
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (accounts?.count)!;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = accountTable.dequeueReusableCellWithIdentifier("AccountCell") as! AccountCell;
        
        cell.accountName.text = accounts![indexPath.row].accountName;
        cell.accountId.text = String(accounts![indexPath.row].accountId);
        cell.accountAmount.text = String(accounts![indexPath.row].accountAmount);
        
        return cell;
        
    }
    
    func tableView(tableView: UITableView, didHighlightRowAtIndexPath indexPath: NSIndexPath) {
        selectedAccount = accounts![indexPath.row];
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AccountsToDetail" {
            if let detailViewController = segue.destinationViewController as? DetailViewController {
                detailViewController.account = selectedAccount!;
            }
        }
    }

}
