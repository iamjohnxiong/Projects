//
//  QuoteViewController.swift
//  QuoteAlarm
//
//  Created by John Xiong on 9/7/16.
//  Copyright © 2016 John Xiong. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var quoteTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK - Table View Methods
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = quoteTableView.dequeueReusableCellWithIdentifier("QuoteTableViewCell") as! QuoteTableViewCell;
        
        cell.quoteLabel.text = "Fortune favors the bold";
        
        return cell;
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
