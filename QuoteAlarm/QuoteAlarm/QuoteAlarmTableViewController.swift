//
//  QuoteAlarmTableViewController.swift
//  QuoteAlarm
//
//  Created by John Xiong on 8/16/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class QuoteAlarmTableViewController: UITableViewController {

    @IBOutlet var quoteAlarmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    
    
    // MARK: UITableViewDelegate Methods
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    @available(iOS 2.0, *)
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = quoteAlarmTableView.dequeueReusableCellWithIdentifier("QuoteAlarmTableViewCell") as! QuoteAlarmTableViewCell;
        
        cell.quoteLabel.text = "Fortune favors the bold";
        cell.timeLabel.text = "1:45 AM";
        cell.timeframeLabel.text = "Everyday";
        
        return cell;
    }
    
}
