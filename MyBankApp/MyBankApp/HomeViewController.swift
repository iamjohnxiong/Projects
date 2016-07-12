//
//  HomeViewController.swift
//  MyBankApp
//
//  Created by John Xiong on 7/8/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBAction func menuButton(sender: AnyObject) {
    }
    
    @IBAction func moreButton(sender: AnyObject) {
    }
    
    @IBOutlet weak var accountTableView: UITableView!
    
    private var accounts: Array<Account>?;
    private var accountFactory = AccountFactory();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        accounts = accountFactory.GetAccounts();
    }

    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (accounts?.count)!;
    }
    
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "AccountInfoCell") as! AccountInfoTableViewCell;
        
        let account = accounts![indexPath.row];
        
        cell.accountAmountLabel.text = String(account.accountAmount);
        cell.accountIdLabel.text = String(account.accountId);
        cell.accountInfoLabel.text = account.accountName;
        
        return cell
    }
    
    internal func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }

    
}
